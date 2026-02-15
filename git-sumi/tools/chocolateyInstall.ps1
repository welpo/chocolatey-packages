$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/git-sumi/releases/download/v$($env:ChocolateyPackageVersion)/git-sumi-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '2f91c1643e1f40dc5a413c134f96e82131165332cfea69d722a672806bf5ab55'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
