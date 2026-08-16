$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/shuku/releases/download/v$($env:ChocolateyPackageVersion)/shuku-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'd5cabd8248f1f7991605e2d0b000a370aaff59a9d780aa491ab5fb0e2f28b857'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
