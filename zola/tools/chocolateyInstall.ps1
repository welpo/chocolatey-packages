$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/getzola/zola/releases/download/v$($env:ChocolateyPackageVersion)/zola-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'dc839498e27b631f60fd5e1527935198b7f002eb09b8446a1e2913a8fa386925'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
