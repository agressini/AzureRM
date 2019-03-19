az vm resize \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --name myVM \
  --size Standard_DS3_v2

  az vm show \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --name myVM \
  --query "hardwareProfile" \
  --output tsv