$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/shuku/releases/download/v$($env:ChocolateyPackageVersion)/shuku-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '22ba39f53c3463bf68dbbdda4b157f547c88914e24cc210a086df07d0448fa00'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
