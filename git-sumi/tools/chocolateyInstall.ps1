$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/git-sumi/releases/download/v$($env:ChocolateyPackageVersion)/git-sumi-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '17e725a6a09be859396d745f2325ed419d1449452d0a6dd985c038d9b7240103'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
