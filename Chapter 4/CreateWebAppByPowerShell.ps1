Login-AzureRmAccount

$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription

$webappname="infra70533pswebapp"
$resgroupname = "infra70533pswebapp-rg"
$location="West Europe"

# Create a resource group.
New-AzureRmResourceGroup -Name $resgroupname -Location $location

# Create an App Service plan in Free tier.
New-AzureRmAppServicePlan -Name $webappname -Location $location 
-ResourceGroupName $resgroupname -Tier Free

# Create a web app.
New-AzureRmWebApp -Name $webappname -Location $location 
-AppServicePlan $webappname -ResourceGroupName $resgroupname
