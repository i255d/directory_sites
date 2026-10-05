# Step 1 of validation-spec.md: Google autocomplete demand map for car wash in Georgia (Winder / Dacula area).
# Writes autocomplete-raw.csv (every seed + suggestion) and autocomplete-seeds.csv (one row per seed).
param(
    [int]$DelayMs = 350
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

# Brainerd to St. Cloud corridor, plus Mille Lacs side
$cities = @(
    "winder","dacula","lawrenceville","buford","braselton","hoschton","auburn","bethlehem","loganville","snellville","grayson","monroe","jefferson","gainesville","athens","suwanee","duluth","lilburn","barrow county","gwinnett"
)

$generic = @{
    A = @("self service car wash near me","self serve car wash near me","coin operated car wash near me","diy car wash near me","24 hour car wash near me","touchless car wash near me","car wash near me","car wash with vacuum near me","self service car wash georgia","self service car wash gwinnett","pet wash near me","dog wash near me","truck wash near me","rv wash near me","boat wash near me","motorcycle wash near me")
    B = @("how much does a self service car wash cost","self service car wash tips","how to use a self serve car wash","self serve car wash vs touchless","best self service car wash soap","self service car wash prices","can you wash your car at home georgia","car wash open late near me","car wash open now","cheap car wash near me")
}

$cityTemplates = @{
    A = @("self service car wash {c}","car wash {c}","touchless car wash {c}","coin car wash {c}","24 hour car wash {c}")
    B = @("car wash {c} ga")
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

