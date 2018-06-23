
Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Entreprise"
Set-AzureRmContext -Subscription $subscription


# Create a resource group.
$webappname="infra70533pswebapp"
$resgroupname = "infra70533pswebapp-rg"
$location="West Europe"

Switch-AzureRmWebAppSlot -SourceSlotName "sourceslot" -DestinationSlotName "destinationslot" -ResourceGroupName $resgroupname -Name $webappname