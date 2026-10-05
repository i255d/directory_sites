# Step 1 of validation-spec.md: Google autocomplete demand map for concrete in central Minnesota.
# Writes autocomplete-raw.csv (every seed + suggestion) and autocomplete-seeds.csv (one row per seed).
param(
    [int]$DelayMs = 350
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

# Brainerd to St. Cloud corridor, plus Mille Lacs side
$cities = @(
    "hillman","pierz","little falls","royalton","rice","holdingford","upsala","randall","motley","pillager",
    "brainerd","baxter","st cloud","sartell","sauk rapids","waite park","foley","princeton",
    "onamia","milaca","isle","aitkin","garrison","crosslake","pequot lakes"
)

$generic = @{
    A = @(
        "concrete contractor near me","concrete contractors near me","concrete company near me","concrete near me",
        "concrete driveway contractor near me","concrete patio contractor near me","concrete repair near me",
        "concrete removal near me","stamped concrete contractor near me","concrete leveling near me",
        "concrete contractor minnesota","concrete driveway minnesota","concrete patio minnesota",
        "concrete contractors central minnesota","concrete contractor mille lacs","concrete contractor lake home"
    )
    B = @(
        "concrete driveway cost","concrete patio cost","concrete slab cost","concrete garage floor cost",
        "pole barn concrete floor cost","stamped concrete cost","concrete foundation cost","concrete sidewalk cost",
        "concrete cost per yard","concrete driveway cost minnesota","concrete slab cost minnesota",
        "how thick should a concrete driveway be","concrete in cold weather","can you pour concrete in winter minnesota",
        "concrete driveway vs asphalt","concrete resurfacing cost"
    )
}

$cityTemplates = @{
    A = @("concrete {c}","concrete contractor {c}","concrete driveway {c}","concrete patio {c}","concrete {c} mn")
    B = @("concrete slab {c}","garage floor concrete {c}")
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
