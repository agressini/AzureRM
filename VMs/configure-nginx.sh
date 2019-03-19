az vm extension set \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --vm-name myVM \
  --name customScript \
  --publisher Microsoft.Azure.Extensions \
  --settings "{'fileUris':['https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh']}" \
  --protected-settings "{'commandToExecute': './configure-nginx.sh'}"

  az vm open-port \
  --name myVM \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --port 80

  az vm show \
  --name myVM \
  --resource-group 4d04a034-aa89-442e-88d8-28f374dbed4d \
  --show-details \
  --query [publicIps] \
  --output tsv