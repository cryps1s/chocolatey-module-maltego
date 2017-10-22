$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.paterva.com/malv41/maltego_v4.1.0.10552.exe' 
$url64      = 'https://www.paterva.com/malv41/maltego_v4.1.0.10552.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'Maltego*'
  checksum      = '83AC702AEF3093C9B1599FEC5C60A90D81AB617B92B4719D665E9A9121942D01'
  checksumType  = 'sha256'
  checksum64    = '83AC702AEF3093C9B1599FEC5C60A90D81AB617B92B4719D665E9A9121942D01'
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package