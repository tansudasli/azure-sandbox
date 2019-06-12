echo "Enter the Resource Group name:" &&
read resourceGroupName &&
echo "Enter the location (i.e. westeurope):" &&
read location &&

az group create -n $resourceGroupName --l "$location" &&
az group deployment create -g $resourceGroupName --template-file "$HOME/azuredeploy.json"