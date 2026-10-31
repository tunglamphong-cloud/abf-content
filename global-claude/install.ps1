# install.ps1 — cài skills + settings ABF vào ~/.claude (Windows)
$ErrorActionPreference = "Stop"
$Vault  = Split-Path -Parent $PSScriptRoot
$Claude = Join-Path $HOME ".claude"
$Skills = Join-Path $Claude "skills"

New-Item -ItemType Directory -Force $Skills | Out-Null

foreach ($src in @((Join-Path $PSScriptRoot "skills"), (Join-Path $Vault ".claude\skills"))) {
  if (Test-Path $src) {
    Get-ChildItem $src -Directory | ForEach-Object {
      Copy-Item $_.FullName $Skills -Recurse -Force
      Write-Host "skill: $($_.Name)"
    }
  }
}

$settings = Join-Path $Claude "settings.json"
if (-not (Test-Path $settings)) {
  Copy-Item (Join-Path $PSScriptRoot "settings.json") $settings
  Write-Host "settings.json: da cai"
} else {
  Write-Host "settings.json: da co, giu nguyen"
}

Write-Host "Xong. Mo Claude Code trong folder: $Vault"
