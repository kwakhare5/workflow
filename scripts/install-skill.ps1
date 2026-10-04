param([Parameter(Mandatory)][string]$Group,[Parameter(Mandatory)][string]$Skill,[Parameter(Mandatory)][string]$Project)
$ErrorActionPreference = "Stop"
$repo = Split-Path $PSScriptRoot -Parent
$from = Join-Path $repo "library\$Group\$Skill"
if (-not (Test-Path $from)) { throw "not found: $from" }
$to = Join-Path $Project ".agents\skills\$Skill"
New-Item -ItemType Directory -Force (Split-Path $to -Parent) | Out-Null
if (Test-Path $to) { Remove-Item $to -Recurse -Force }
Copy-Item $from $to -Recurse -Force
if ($Group -eq "marketing") {
  Copy-Item "$repo\tools" (Join-Path $Project ".agents\tools") -Recurse -Force
}
"installed $Skill -> $to"