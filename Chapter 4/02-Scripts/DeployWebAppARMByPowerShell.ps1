Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription


# Create a resource group.
$resgroupname = "infra70533pswebapp-rg"
New-AzureRmResourceGroup -Name $resgroupname -Location $location

New-AzureRmResourceGroupDeployment -Name "infrabasicapp" -ResourceGroupName $resgroupname -TemplateFile .\AzureDeploy.json -TemplateParameterFile  .\AzureDeploy.Parameters.json
