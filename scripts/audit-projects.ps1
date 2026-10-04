$ErrorActionPreference = "Stop"
$master = "$HOME\.agents"
$projectsTxt = Join-Path $master "scripts\projects.txt"
if (-not (Test-Path $projectsTxt)) { throw "projects.txt not found at $projectsTxt" }

$requiredHeadings = @(
  "## What this is",
  "## Stack",
  "## Commands",
  "## Issue tracker",
  "## Design source of truth",
  "## Gotchas"
)

$lines = Get-Content $projectsTxt | Where-Object { $_ -and -not $_.StartsWith("#") }
foreach ($line in $lines) {
  $parts = $line -split '\|'
  $projPath = $parts[0].Trim()
  $status = if ($parts.Count -gt 1) { $parts[1].Trim() } else { "active" }
  
  if (-not (Test-Path $projPath)) {
    "DRIFT: $projPath (directory not found)"
    continue
  }
  
  $agentsMd = Join-Path $projPath "AGENTS.md"
  if (-not (Test-Path $agentsMd)) {
    "DRIFT: $projPath (missing AGENTS.md)"
    continue
  }
  
  $mdContent = Get-Content $agentsMd -Raw
  $missingHeadings = @()
  foreach ($h in $requiredHeadings) {
    if ($mdContent -notmatch [regex]::Escape($h)) {
      $missingHeadings += $h
    }
  }
  
  if ($status -eq "active" -and $mdContent -match "(?m)^-\s*(Install|Dev server|Test|E2E|Lint).*<cmd>|TODO") {
    "DRIFT: $projPath (Commands contain unconfigured <cmd> or TODO placeholder)"
    continue
  }
  
  $skillsList = Join-Path $projPath ".agents\skills.list"
  $skillsDrift = $false
  if (Test-Path $skillsList) {
    $skills = Get-Content $skillsList | Where-Object { $_.Trim() }
    foreach ($sk in $skills) {
      $skPath = Join-Path $projPath ".agents\skills\$sk"
      if (-not (Test-Path $skPath)) {
        "DRIFT: $projPath (skill '$sk' listed in skills.list but not installed at $skPath)"
        $skillsDrift = $true
      }
    }
  }
  
  if ($missingHeadings.Count -gt 0) {
    "DRIFT: $projPath (missing headings: $($missingHeadings -join ', '))"
  } elseif (-not $skillsDrift) {
    "OK:    $projPath ($status)"
  }
}