param([switch]$Repair)
$master = "$HOME\.agents"
$skillLinks = @("$HOME\.gemini\config\skills","$HOME\.gemini\skills","$HOME\.codex\skills","$HOME\.claude\skills","$HOME\.config\opencode\skills")
$mdLinks    = @("$HOME\.gemini\config\AGENTS.md","$HOME\.codex\AGENTS.md","$HOME\.claude\CLAUDE.md","$HOME\.config\opencode\AGENTS.md")
foreach ($l in $skillLinks) {
  $i = Get-Item $l -Force -ErrorAction SilentlyContinue
  if ($i -and $i.LinkType -eq "Junction" -and ($i.Target -join "") -eq "$master\skills") { "OK    $l" }
  else {
    "BROKEN $l"
    if ($Repair) {
      if ($i -and $i.LinkType) { cmd /c rmdir "$l" }
      elseif ($i) { Rename-Item $l "$(Split-Path $l -Leaf).old-$(Get-Date -f yyyyMMdd-HHmmss)" }
      New-Item -ItemType Junction -Path $l -Target "$master\skills" | Out-Null
      "  repaired"
    }
  }
}
$mh = (Get-FileHash "$master\AGENTS.md").Hash
foreach ($f in $mdLinks) {
  $same = (Test-Path $f) -and ((Get-FileHash $f).Hash -eq $mh) -and ((fsutil hardlink list "$master\AGENTS.md") -match [regex]::Escape(($f -replace '^[A-Za-z]:','')))
  if ($same) { "OK    $f" }
  else {
    "BROKEN $f (content or link differs from master)"
    if ($Repair) {
      if (Test-Path $f) { Copy-Item $f "$f.diverged-$(Get-Date -f yyyyMMdd-HHmmss)"; Remove-Item $f }
      New-Item -ItemType HardLink -Path $f -Target "$master\AGENTS.md" | Out-Null
      "  repaired (old content saved as .diverged-*)"
    }
  }
}