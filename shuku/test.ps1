param([Parameter(Mandatory)][string]$ExpectedVersion)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true

$version = (shuku --version) -join ' '
if ($version -ne "shuku $ExpectedVersion") {
    throw "expected 'shuku $ExpectedVersion', got '$version'"
}

Set-Location (New-Item -ItemType Directory -Path (Join-Path $env:TEMP "shuku-$(New-Guid)"))
shuku --init
