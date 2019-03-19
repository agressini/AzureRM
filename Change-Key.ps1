Connect-AadrmService
(Get-Module aadrm -ListAvailable).Version
Get-AadrmConfiguration
Get-AadrmKeys
Use-AadrmKeyVaultKey -KeyVaultKeyUrl "https://kv-prod-rms.vault.azure.net/keys/RMS-PROD/95c75d761b974730a2f7bebeee06f1b0"