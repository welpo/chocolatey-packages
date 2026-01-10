$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/getzola/zola/releases/download/v$($env:ChocolateyPackageVersion)/zola-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '2dc877fdf052fd91da8d0f3efd2d84a612f89a4edcd113db542a1211e99f5c96'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
