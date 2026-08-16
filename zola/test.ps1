param([Parameter(Mandatory)][string]$ExpectedVersion)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true

$version = (zola --version) -join ' '
if ($version -ne "zola $ExpectedVersion") {
    throw "expected 'zola $ExpectedVersion', got '$version'"
}

Set-Location (New-Item -ItemType Directory -Path (Join-Path $env:TEMP "zola-$(New-Guid)"))
'', '', '' | zola init testsite
Set-Location testsite
zola build
if (-not (Test-Path 'public/index.html')) {
    throw 'zola build produced no output'
}
