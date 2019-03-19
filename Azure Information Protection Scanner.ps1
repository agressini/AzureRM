#se debe tener instalado el cliente RMS
Set-ExecutionPolicy RemoteSigned
Install-AIPScanner -SqlServerInstance TECBWSQL27\AIPSCANNER
#Set-AIPAuthentication -webAppId "bcd20e45-b80b-4886-be15-80aed317f174" -webAppKey "BpFH3+GQqt0Wg+HZINYoFFS6h15xJNg2EUGU0+puRJY=" -nativeAppId "c193fd7c-d312-4716-9087-0f2c1878257a" -Token <token value>
#(Set-AIPAuthentication -WebAppId "bcd20e45-b80b-4886-be15-80aed317f174" -WebAppKey "BpFH3+GQqt0Wg+HZINYoFFS6h15xJNg2EUGU0+puRJY="  -NativeAppId "c193fd7c-d312-4716-9087-0f2c1878257a").token | clip
$AIPStoken = (Set-AIPAuthentication -WebAppId "bcd20e45-b80b-4886-be15-80aed317f174" -WebAppKey "BpFH3+GQqt0Wg+HZINYoFFS6h15xJNg2EUGU0+puRJY=" -NativeAppId "c193fd7c-d312-4716-9087-0f2c1878257a").token
$AIPStoken | Out-File -FilePath C:\AzureIP\Token.txt
Set-AIPAuthentication -webAppId "bcd20e45-b80b-4886-be15-80aed317f174" -webAppKey "BpFH3+GQqt0Wg+HZINYoFFS6h15xJNg2EUGU0+puRJY=" -nativeAppId "c193fd7c-d312-4716-9087-0f2c1878257a" -Token $AIPStoken
Set-Location -Path %localappdata%\Microsoft\MSIP
#Set-AIPScannerRepository -Path \\NAS\HR -SetDefaultLabel On -DefaultLabelId f018e9e7-0cfc-4c69-b27a-ac3cb7df43cc -OverrideLabel On -DefaultOwner "admin@contoso.com"
Add-AIPScannerRepository -Path \\TECBWAP55\Repo -SetDefaultLabel On -DefaultLabelId 228f4c95-dce2-4eca-82a5-218a39791196
#sharepoint
Add-AIPScannerRepository -Path http://tecbwshp06/sites/GESI/Shared%20Documents/Forms/AllItems.aspx -SetDefaultLabel On -DefaultLabelId b76786f0-95f2-41c4-b1f5-18279236811d
Get-AIPScannerRepository
##configuracion
Set-AIPScannerConfiguration -Enforce On -Schedule Always -ReportLevel Debug -DiscoverInformationTypes All
Start-AIPScan
# opcional que siempre corra y aplique proteccion
Set-AIPScannerConfiguration -Enforce On -Schedule Always