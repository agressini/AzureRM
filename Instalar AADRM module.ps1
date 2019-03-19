Install-Module -Name AADRM
#Si el repositorio no esta configurado Set-PSRepository -Name PSGallery -InstallationPolicy Trusted  y luego install-module
Update-Module -Name AADRM
(Get-Module AADRM –ListAvailable).Version
Get-Command -Module AADRM