Connect-AadrmService
(Get-Module aadrm -ListAvailable).Version
Get-AadrmConfiguration
Get-AadrmKeys
Get-AadrmSuperUserFeature
Get-AadrmSuperUserGroup
Get-AadrmSuperUser
## si no esta habilitado se habilita getEnable-AadrmSuperUserFeature
Add-AadrmSuperUser -EmailAddress "XXXXXXXX@tecpetrol.com"