Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription




New-AzureRmResourceGroupDeployment -Name "infrabasicapp" -ResourceGroupName "infra70533pswebapp-rg" -TemplateFile .\AzureDeploy.json -TemplateParameterFile  .\AzureDeploy.Parameters.json
