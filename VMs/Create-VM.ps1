Connect-AzureRMAccount
New-AzureRmVm `
    -ResourceGroupName "MyResourceGroup" `
    -Name "TestVm" `
    -Image "UbuntuLTS"
    ...