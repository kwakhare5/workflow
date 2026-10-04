param([Parameter(Mandatory)][string]$SkillsPath,[string]$AgentsMdPath)
$master = "$HOME\.agents"; $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
if (Test-Path $SkillsPath) { $i = Get-Item $SkillsPath -Force; if ($i.LinkType) { cmd /c rmdir "$SkillsPath" } else { Rename-Item $SkillsPath ("{0}.old-$stamp" -f (Split-Path $SkillsPath -Leaf)) } }
New-Item -ItemType Directory -Force (Split-Path $SkillsPath -Parent) | Out-Null
New-Item -ItemType Junction -Path $SkillsPath -Target "$master\skills" | Out-Null
if ($AgentsMdPath) { if (Test-Path $AgentsMdPath) { Rename-Item $AgentsMdPath ("{0}.old-$stamp" -f (Split-Path $AgentsMdPath -Leaf)) }
  New-Item -ItemType HardLink -Path $AgentsMdPath -Target "$master\AGENTS.md" | Out-Null }
"linked. Add the same paths to check-links.ps1 so they are verified."