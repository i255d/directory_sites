# Step 1 of validation-spec.md: Google autocomplete demand map.
# Writes autocomplete-raw.csv (every seed + suggestion) and autocomplete-seeds.csv (one row per seed).
param(
    [string]$State = "ga",
    [int]$DelayMs = 350
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

$cities = @(
    "dacula","lawrenceville","buford","snellville","winder","braselton","gainesville","athens","cumming","monroe",
    "atlanta","marietta","alpharetta","augusta","macon","columbus","savannah",
    "jefferson","commerce","cornelia","madison"
)

$generic = @{
    A = @(
        "drone roof inspection","drone roof inspection near me","drone roof inspection cost",
        "drone photography","drone photography near me","drone photography prices","drone photographer near me",
        "aerial photography near me","real estate drone photography","drone video for airbnb","drone video for vrbo",
        "construction drone photography","drone services near me","drone pilot for hire","hire a drone pilot",
        "roof drone","thermal drone inspection","drone photography $State","drone services $State","drone roof inspection $State"
    )
    B = @(
        "roofers near me","hail damage roof","storm damage roof","roof leak repair near me","roof replacement cost",
        "does insurance cover hail damage roof","how to tell if my roof has hail damage","roof inspection near me",
        "free roof inspection","roof inspection after storm","hail damage $State","roof replacement $State","roofers $State"
    )
    C = @(
        "how to start a drone business","drone roof inspection business","drone business ideas","make money with a drone",
        "drone pilot jobs","drone pilot salary","drone pilot license","part 107 test","part 107 test $State",
        "drone pilot jobs $State","drone pilot license $State","drone photography business"
    )
}

$cityTemplates = @{
    A = @("drone photography {c}","drone photographer {c}","aerial photography {c}","drone roof inspection {c}","real estate drone photography {c}")
    B = @("roofers {c}","roof repair {c}","hail damage roof {c}","storm damage roof {c}")
}

function Get-Suggestions([string]$q) {
    $url = "https://suggestqueries.google.com/complete/search?client=firefox&hl=en&gl=us&q=" + [uri]::EscapeDataString($q)
    for ($i = 0; $i -lt 3; $i++) {
        try {
            $r = Invoke-WebRequest -Uri $url -UseBasicParsing -TimeoutSec 15
            $json = $r.Content | ConvertFrom-Json
            return @($json[1])
        } catch { Start-Sleep -Seconds (2 * ($i + 1)) }
    }
    return @()
}

$jobs = New-Object System.Collections.Generic.List[object]
foreach ($g in $generic.Keys) { foreach ($s in $generic[$g]) { $jobs.Add([pscustomobject]@{ Group = $g; City = ""; Seed = $s }) } }
foreach ($g in $cityTemplates.Keys) {
    foreach ($t in $cityTemplates[$g]) {
        foreach ($c in $cities) { $jobs.Add([pscustomobject]@{ Group = $g; City = $c; Seed = $t.Replace("{c}", $c) }) }
    }
}

$raw = New-Object System.Collections.Generic.List[object]
$seeds = New-Object System.Collections.Generic.List[object]
$n = 0
foreach ($j in $jobs) {
    $n++
    Write-Progress -Activity "Autocomplete" -Status $j.Seed -PercentComplete ($n * 100 / $jobs.Count)
    $sugs = Get-Suggestions $j.Seed
    $cityHits = 0
    foreach ($s in $sugs) {
        $hasCity = if ($j.City) { $s -match [regex]::Escape($j.City) } else { $false }
        if ($hasCity) { $cityHits++ }
        $raw.Add([pscustomobject]@{ group = $j.Group; city = $j.City; seed = $j.Seed; suggestion = $s; contains_city = $hasCity })
    }
    $seeds.Add([pscustomobject]@{
        group = $j.Group; city = $j.City; seed = $j.Seed
        suggestions = $sugs.Count; with_city = $cityHits
        top = ($sugs | Select-Object -First 5) -join " | "
    })
    Start-Sleep -Milliseconds $DelayMs
}

$raw   | Export-Csv (Join-Path $here "autocomplete-raw.csv") -NoTypeInformation -Encoding UTF8
$seeds | Export-Csv (Join-Path $here "autocomplete-seeds.csv") -NoTypeInformation -Encoding UTF8
"Seeds: $($seeds.Count)  Suggestions: $($raw.Count)  Unique: $(($raw.suggestion | Sort-Object -Unique).Count)"
