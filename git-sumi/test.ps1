param([Parameter(Mandatory)][string]$ExpectedVersion)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true

$version = (git-sumi --version) -join ' '
if ($version -ne "git-sumi $ExpectedVersion") {
    throw "expected 'git-sumi $ExpectedVersion', got '$version'"
}

Set-Location (New-Item -ItemType Directory -Path (Join-Path $env:TEMP "git-sumi-$(New-Guid)"))
git-sumi --conventional 'feat: add a thing'
