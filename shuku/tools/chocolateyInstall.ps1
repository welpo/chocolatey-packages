$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/shuku/releases/download/v$($env:ChocolateyPackageVersion)/shuku-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'f52a2b06c6d2958b56ef0cd311d6a46f357dbabab8ec7382ca7dd3dd8970c271'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
