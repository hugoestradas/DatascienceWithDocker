az login

az vm list-sizes -l "eastus"

az group create --name "hugoestradasdatasciencerg" -l "eastus"

az vm create --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --image "UbuntuLTS"  --size "Standard_B2ms"  --admin-username "vm-dsenv" --admin-password "P@ssword12345" -l "eastus"

az vm open-port  --port 22   --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 100
az vm open-port  --port 80   --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 101
az vm open-port  --port 8888 --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 102
az vm open-port  --port 5432 --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 103
az vm open-port  --port 8081 --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 104
az vm open-port  --port 8088 --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 105
az vm open-port  --port 9000 --resource-group "hugoestradasdatasciencerg" -n "vm-dsenv" --priority 106

az group delete -n "hugoestradasdatasciencerg"
