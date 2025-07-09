$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/git-sumi/releases/download/v$($env:ChocolateyPackageVersion)/git-sumi-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '2682b2e0bba9b18c195079602d4ae993299e0e4389f2b8cc84ac32e89c6ec466'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
