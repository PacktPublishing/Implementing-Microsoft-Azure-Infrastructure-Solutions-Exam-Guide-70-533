Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Enterprise – MPN"
Set-AzureRmContext -Subscription $subscription


# Create a resource group.
$resgroupname = "infra-70533-rg"
$location = "West Europe"


New-AzureRmResourceGroup -Name $resgroupname -Location $location 

$virtualNetwork = New-AzureRmVirtualNetwork  -ResourceGroupName $resgroupname -Location $location -Name infraVnet -AddressPrefix 10.0.0.0/16

$subnetConfig = Add-AzureRmVirtualNetworkSubnetConfig -Name default -AddressPrefix 10.0.0.0/24 -VirtualNetwork $virtualNetwork

$virtualNetwork | Set-AzureRmVirtualNetwork
