Login-AzureRmAccount

#At moment for one subscription 
$subscription = "Visual Studio Dev Essential"

Set-AzureRmContext -Subscription $subscription

$VnetPeeringRG = "testinfra-vnetpeering-rg"
$Vnet1 = "Vnet1"
$Vnet2   = "Vnet2"

$rmvnet1 = Get-AzureRmVirtualNetwork -Name $Vnet1 -ResourceGroup $VnetPeeringRG
$rmvnet2   = Get-AzureRmVirtualNetwork -Name $Vnet2 -ResourceGroup $VnetPeeringRG



Add-AzureRmVirtualNetworkPeering `
  -Name peering-vnet1tovent2 `
  -VirtualNetwork $Vnet1 `
  -RemoteVirtualNetworkId $Vnet2.Id `
  -AllowGatewayTransit

  Add-AzureRmVirtualNetworkPeering `
  -Name peering-vnet2tovent1 `
  -VirtualNetwork $Vnet2 `
  -RemoteVirtualNetworkId $Vnet1.Id `
  -UseRemoteGateways
