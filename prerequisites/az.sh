az login

az vm list-sizes -l "eastus"

az group create --name "hergdatascience" -l "eastus"

az vm create --resource-group "hergdatascience" -n "vm" --image "UbuntuLTS"  --size "Standard_B2ms"  --admin-username "vmuser" --admin-password "P@ssword12345" -l "eastus"

az vm open-port  --port 22   --resource-group "hergdatascience" -n "vm" --priority 100
az vm open-port  --port 80   --resource-group "hergdatascience" -n "vm" --priority 101
az vm open-port  --port 8888 --resource-group "hergdatascience" -n "vm" --priority 102
az vm open-port  --port 5432 --resource-group "hergdatascience" -n "vm" --priority 103
az vm open-port  --port 8081 --resource-group "hergdatascience" -n "vm" --priority 104
az vm open-port  --port 8088 --resource-group "hergdatascience" -n "vm" --priority 105
az vm open-port  --port 9000 --resource-group "hergdatascience" -n "vm" --priority 106

#az group delete -n "hergdatascience"
