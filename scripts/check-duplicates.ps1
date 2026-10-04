$ErrorActionPreference = "Stop"
$master = "$HOME\.agents"
$skillsDir = Join-Path $master "skills"
$libraryDir = Join-Path $master "library"

$seen = @{}
$duplicates = @()

# 1. Global skills
Get-ChildItem $skillsDir -Directory | Where-Object { -not $_.Name.StartsWith(".") } | ForEach-Object {
    $name = $_.Name
    $seen[$name] = @("skills\$name")
}

# 2. Library skills
Get-ChildItem $libraryDir -Directory | ForEach-Object {
    $group = $_.Name
    Get-ChildItem $_.FullName -Directory | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") } | ForEach-Object {
        $name = $_.Name
        $relPath = "library\$group\$name"
        if ($seen.ContainsKey($name)) {
            $seen[$name] += $relPath
            $duplicates += $name
        } else {
            $seen[$name] = @($relPath)
        }
    }
}

if ($duplicates.Count -gt 0) {
    Write-Host "DUPLICATES FOUND:"
    $duplicates | Select-Object -Unique | ForEach-Object {
        Write-Host "  $_ -> $($seen[$_] -join ', ')"
    }
    exit 1
} else {
    # Expected: nothing printed
}
