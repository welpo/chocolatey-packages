$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://github.com/welpo/shuku/releases/download/v$($env:ChocolateyPackageVersion)/shuku-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '5332ca466ab90923a61b3547ab9add5e8c9cfd6ec237f0485815626bc0bd9489'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
