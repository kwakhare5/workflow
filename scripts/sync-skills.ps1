param([switch]$DryRun=$true,[switch]$Prune)
$ErrorActionPreference = "Stop"
$repo = Split-Path $PSScriptRoot -Parent
$master = Join-Path $repo "skills"
$mirrors = @("$HOME\.gemini\config\skills","$HOME\.gemini\skills","$HOME\.agents\skills","$HOME\.codex\skills")
foreach ($m in $mirrors) {
  $item = Get-Item $m -ErrorAction SilentlyContinue
  if ($item -and $item.LinkType) {
    "== $m is a $($item.LinkType) to $($item.Target) -> skipping duplicate mirror"
    continue
  }
  New-Item -ItemType Directory -Force $m | Out-Null
  $args = @($master,$m,"/E","/XD",".disabled",".system","/NFL","/NDL","/NJH","/NP")
  if ($Prune) { $args = @($master,$m,"/MIR","/XD",".disabled",".system","/NFL","/NDL","/NJH","/NP") }
  if ($DryRun) { $args += "/L" }
  "== $m (DryRun=$DryRun Prune=$Prune)"; & robocopy @args
}
# marketing tools/ belongs next to each mirror's skills folder
foreach ($m in $mirrors) {
  $item = Get-Item $m -ErrorAction SilentlyContinue
  if ($item -and $item.LinkType) { continue }
  $parent = Split-Path $m -Parent
  if (Test-Path "$repo\tools") {
    $a = @("$repo\tools","$parent\tools","/E","/NFL","/NDL","/NJH","/NP")
    if ($DryRun) { $a += "/L" }
    "== $parent\tools (DryRun=$DryRun)"; & robocopy @a
  }
}