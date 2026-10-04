param([Parameter(Mandatory)][string]$Project)
$ErrorActionPreference = "Stop"
$master = "$HOME\.agents"
$template = Join-Path $master "templates\AGENTS.project.md"
if (-not (Test-Path $Project)) { New-Item -ItemType Directory -Force $Project | Out-Null }
$target = Join-Path $Project "AGENTS.md"

if (Test-Path $target) {
  $proposed = Join-Path $Project "AGENTS.md.proposed"
  Copy-Item $template $proposed -Force
  "Target $target already exists. Wrote proposed template to $proposed."
  "Diff:"
  Compare-Object (Get-Content $target) (Get-Content $proposed)
} else {
  Copy-Item $template $target
  "Created $target from template."
}

$agentsDir = Join-Path $Project ".agents"
New-Item -ItemType Directory -Force $agentsDir | Out-Null
$listFile = Join-Path $agentsDir "skills.list"
if (-not (Test-Path $listFile)) { New-Item -ItemType File -Force $listFile | Out-Null }

# Ensure no stray .agents\AGENTS.md exists; project facts belong solely in root AGENTS.md
$strayAgents = Join-Path $agentsDir "AGENTS.md"
if (Test-Path $strayAgents) { Remove-Item $strayAgents -Force }

$gitignore = Join-Path $Project ".gitignore"
$ignoreLines = @(".agents/skills/", ".agents/tools/")
if (Test-Path $gitignore) {
  $existing = Get-Content $gitignore
  foreach ($line in $ignoreLines) {
    if ($existing -notcontains $line) { Add-Content $gitignore $line }
  }
} else {
  Set-Content $gitignore $ignoreLines
}

$projectsTxt = Join-Path $master "scripts\projects.txt"
$entry = "$Project|active"
if (-not (Test-Path $projectsTxt) -or -not (Select-String -Path $projectsTxt -Pattern [regex]::Escape($Project) -Quiet)) {
  Add-Content $projectsTxt $entry
  "Added $entry to $projectsTxt"
}