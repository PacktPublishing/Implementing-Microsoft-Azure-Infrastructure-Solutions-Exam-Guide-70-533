

az group create --name infra-70533-rg --location 'West Europe'

az network vnet create --name infraVnet --resource-group infra-70533-rg --subnet-name default
