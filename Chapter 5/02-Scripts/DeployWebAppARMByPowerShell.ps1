Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription


# Create a resource group.
$webappname="infra70533pswebapp"
$resgroupname = "infra70533pswebapp-rg"
$location="West Europe"

New-AzureRmResourceGroup -Name $resgroupname -Location $location

New-AzureRmResourceGroupDeployment -Name $webappname -ResourceGroupName $resgroupname -TemplateFile ./03-ARM/Create-web-app/AzureDeploy.json -TemplateParameterFile  ./03-ARM/Create-web-app/AzureDeploy.Parameters.json
