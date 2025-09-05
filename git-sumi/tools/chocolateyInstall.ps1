$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/git-sumi/releases/download/v$($env:ChocolateyPackageVersion)/git-sumi-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'e3e030cc636b69491d49c6a463549326288b78057c01a45159fba0c78cd3b4a6'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
