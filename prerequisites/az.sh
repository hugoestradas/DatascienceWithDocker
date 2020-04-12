az login

az vm list-sizes -l "eastus"

az group create -name "datasciencerg" -l "eastus"

az vm create --resource-group "datasciencerg" -n "datasciencevm" --image "UbuntuLTS"  --size "Standard_B2ms"  --admin-username "datascience" --admin-password "Datascience@123" -l "eastus"

az vm open-port  --port 22   --resource-group "datasciencerg" -n "datasciencevm" --priority 100
az vm open-port  --port 80   --resource-group "datasciencerg" -n "datasciencevm" --priority 101
az vm open-port  --port 8888 --resource-group "datasciencerg" -n "datasciencevm" --priority 102
az vm open-port  --port 5432 --resource-group "datasciencerg" -n "datasciencevm" --priority 103
az vm open-port  --port 8081 --resource-group "datasciencerg" -n "datasciencevm" --priority 104
az vm open-port  --port 8088 --resource-group "datasciencerg" -n "datasciencevm" --priority 105
az vm open-port  --port 9000 --resource-group "datasciencerg" -n "datasciencevm" --priority 106

#az group delete -n "datasciencerg"
