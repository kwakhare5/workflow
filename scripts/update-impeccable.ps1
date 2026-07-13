#!/usr/bin/env pwsh
# update-impeccable.ps1
# Keeps the impeccable UI skill current from npm.
# Fully self-contained — no dependency on d:\New folder.
# Source of truth is C:\Users\kwakh\.gemini\config\skills\impeccable

$STRAY  = "C:\Users\kwakh\.gemini\skills\impeccable"
$CONFIG = "C:\Users\kwakh\.gemini\config\skills\impeccable"

Write-Host "=== Updating impeccable ===" -ForegroundColor Cyan
npx impeccable update

if (-not (Test-Path $STRAY)) {
    Write-Host "Already up to date." -ForegroundColor Green
    exit 0
}

Write-Host "`n=== Moving to live config ===" -ForegroundColor Cyan
robocopy $STRAY $CONFIG /E /IS /NJH /NJS

Write-Host "`n=== Removing stray folder ===" -ForegroundColor Cyan
Remove-Item "C:\Users\kwakh\.gemini\skills" -Recurse -Force

Write-Host "`n=== Done ===" -ForegroundColor Green
Write-Host "Updated: $CONFIG"
