az login
az group create --name xxx --location xxx
az vm create \
  --name myVM \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --image UbuntuLTS \
  --location eastus \
  --size Standard_DS2_v2 \
  --admin-username azureuser \
  --generate-ssh-keys

  az vm get-instance-view \
  --name myVM \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --output table