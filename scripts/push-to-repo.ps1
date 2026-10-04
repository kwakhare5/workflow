param([switch]$Push, [string]$Message, [switch]$AllowUncommitted)
$ErrorActionPreference = "Stop"
$master = "$HOME\.agents"; $repo = "D:\workflow"
if (-not (Test-Path "$repo\.git")) { throw "repo not found: $repo" }
if (-not $AllowUncommitted -and (git -C $repo status --porcelain)) { "Repo has uncommitted changes BEFORE the copy:"; git -C $repo status --short; throw "Commit or stash them first." }
foreach ($d in "skills","library","tools","templates","scripts") {
  robocopy "$master\$d" "$repo\$d" /MIR /XD .git .disabled node_modules /NFL /NDL /NJH /NP /R:1 /W:1
  if ($LASTEXITCODE -ge 8) { throw "robocopy failed for $d ($LASTEXITCODE)" }
}
Copy-Item "$master\AGENTS.md" "$repo\AGENTS.md" -Force
Copy-Item "$master\PLAYBOOK.md" "$repo\PLAYBOOK.md" -Force
if (Test-Path "$repo\LIBRARY-CATALOG.md") { Remove-Item "$repo\LIBRARY-CATALOG.md" -Force }
# repo-only files (README.md, THIRD-PARTY-NOTICES.md, JOURNAL.md, .gitignore, .gitattributes) are NOT touched
git -C $repo add -A
$msg = if ($Message) { $Message } else { "snapshot from system master $(Get-Date -Format 'yyyy-MM-dd HH:mm')" }
git -C $repo status --short
if (-not (git -C $repo status --porcelain)) { "Nothing changed."; return }
git -C $repo commit -m $msg
if ($Push) { git -C $repo push } else { "Committed locally. Run with -Push to push, after you have looked at the diff." }