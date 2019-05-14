Connect-AadrmService
(Get-Module aadrm -ListAvailable).Version
Get-AadrmConfiguration
Get-AadrmSuperUserFeature
Get-AadrmSuperUserGroup
Get-AadrmSuperUser
## si no esta habilitado se habilita getEnable-AadrmSuperUserFeature
## Add-AadrmSuperUser -EmailAddress "AzureRMS-SUG@tecpetrol.com"
Set-AadrmSuperUserGroup -GroupEmailAddress "AzureRMS-SUG@tecpetrol.com"