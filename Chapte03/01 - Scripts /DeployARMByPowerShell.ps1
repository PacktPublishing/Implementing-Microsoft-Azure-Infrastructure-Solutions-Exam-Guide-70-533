Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription


# Create a resource group.
$deploymentname="infra70533deployment"
$resgroupname = "infra70533-rg"
$location="West Europe"

New-AzureRmResourceGroup -Name $resgroupname -Location $location

New-AzureRmResourceGroupDeployment -Name $deploymentname -ResourceGroupName $resgroupname -TemplateFile ./02-ARM/AzureDeploy.json -TemplateParameterFile  ./02-ARM/AzureDeploy.Parameters.json
