# Lists counties and places (cities, towns, CDPs) within a radius of a home base,
# using U.S. Census Gazetteer files. Distances are straight-line miles.

param(
    [double]$HomeLat = 33.9887,     # Dacula, GA
    [double]$HomeLon = -83.8979,
    [double]$RadiusMiles = 150
)

$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

function Get-Miles([double]$lat1, [double]$lon1, [double]$lat2, [double]$lon2) {
    $r = 3958.8
    $toRad = [math]::PI / 180
    $dLat = ($lat2 - $lat1) * $toRad
    $dLon = ($lon2 - $lon1) * $toRad
    $a = [math]::Sin($dLat / 2) * [math]::Sin($dLat / 2) +
         [math]::Cos($lat1 * $toRad) * [math]::Cos($lat2 * $toRad) *
         [math]::Sin($dLon / 2) * [math]::Sin($dLon / 2)
    return 2 * $r * [math]::Asin([math]::Sqrt($a))
}

function Import-Gazetteer($path) {
    $lines = Get-Content $path
    $headers = $lines[0].Split("`t") | ForEach-Object { $_.Trim() }
    foreach ($line in $lines | Select-Object -Skip 1) {
        $cols = $line.Split("`t")
        $row = [ordered]@{}
        for ($i = 0; $i -lt $headers.Count; $i++) { $row[$headers[$i]] = $cols[$i].Trim() }
        [pscustomobject]$row
    }
}

$counties = Import-Gazetteer '2024_Gaz_counties_national.txt' | ForEach-Object {
    $miles = Get-Miles $HomeLat $HomeLon ([double]$_.INTPTLAT) ([double]$_.INTPTLONG)
    if ($miles -le $RadiusMiles) {
        [pscustomobject]@{
            State     = $_.USPS
            County    = $_.NAME
            Miles     = [math]::Round($miles, 1)
            LandSqMi  = [double]$_.ALAND_SQMI
            Latitude  = $_.INTPTLAT
            Longitude = $_.INTPTLONG
        }
    }
} | Sort-Object Miles

$places = Import-Gazetteer '2024_Gaz_place_national.txt' | ForEach-Object {
    $miles = Get-Miles $HomeLat $HomeLon ([double]$_.INTPTLAT) ([double]$_.INTPTLONG)
    if ($miles -le $RadiusMiles) {
        $type = if ($_.NAME -match ' CDP$') { 'Community (unincorporated)' }
                elseif ($_.NAME -match ' town$') { 'Town' }
                else { 'City' }
        [pscustomobject]@{
            State     = $_.USPS
            Place     = ($_.NAME -replace ' (city|town|CDP|village|consolidated government.*|unified government.*|metropolitan government.*|\(balance\))$', '').Trim()
            Type      = $type
            Miles     = [math]::Round($miles, 1)
            Latitude  = $_.INTPTLAT
            Longitude = $_.INTPTLONG
        }
    }
} | Sort-Object Miles

$counties | Export-Csv 'counties-within-radius.csv' -NoTypeInformation
$places   | Export-Csv 'places-within-radius.csv' -NoTypeInformation

"Counties within $RadiusMiles miles: $($counties.Count)"
$counties | Group-Object State | Sort-Object Count -Descending | ForEach-Object { "  $($_.Name): $($_.Count)" }
"Places within $RadiusMiles miles: $($places.Count)"
$places | Group-Object State | Sort-Object Count -Descending | ForEach-Object { "  $($_.Name): $($_.Count)" }
