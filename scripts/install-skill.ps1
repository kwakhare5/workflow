param([Parameter(Mandatory)][string]$Skill,[Parameter(Mandatory)][string]$Project,[ValidateSet("Junction","Copy")][string]$Mode="Junction")
$ErrorActionPreference = "Stop"
$lib = "$HOME\.agents\library"
$from = Get-ChildItem $lib -Directory | % { Join-Path $_.FullName $Skill } | ? { Test-Path "$_\SKILL.md" } | Select -First 1
if (-not $from) { throw "skill '$Skill' not found in $lib" }
$dest = Join-Path $Project ".agents\skills"
New-Item -ItemType Directory -Force $dest | Out-Null
$to = Join-Path $dest $Skill
if (Test-Path $to) { if ((Get-Item $to).LinkType) { cmd /c rmdir "$to" } else { throw "$to exists and is a real folder; move it first" } }
if ($Mode -eq "Junction") { New-Item -ItemType Junction -Path $to -Target $from | Out-Null } else { Copy-Item $from $to -Recurse -Force }
if ((Split-Path (Split-Path $from -Parent) -Leaf) -eq "marketing") {      # marketing skills read ../../tools/
  $t = Join-Path $Project ".agents\tools"
  if (-not (Test-Path $t)) { if ($Mode -eq "Junction") { New-Item -ItemType Junction -Path $t -Target "$HOME\.agents\tools" | Out-Null } else { Copy-Item "$HOME\.agents\tools" $t -Recurse } }
}
$list = Join-Path $Project ".agents\skills.list"
if (-not (Test-Path $list) -or -not (Select-String -Path $list -Pattern "^$Skill$" -Quiet)) { Add-Content $list $Skill }
"installed $Skill ($Mode) -> $to"