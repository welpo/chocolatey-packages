$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/shuku/releases/download/v$($env:ChocolateyPackageVersion)/shuku-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'e2aa4fd463852c8875df44c4aaf46e81840d6ada88434c7309f6cf098ff52b23'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
