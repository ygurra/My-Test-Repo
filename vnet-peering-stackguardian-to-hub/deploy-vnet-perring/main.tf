--- TEST EDIT ----

#peering is done form one vnet to the other one via terraform using the two modules bellow

module "vnet_peer_fwhub_to_stackguardian" {
    source = "../modules/vnet-peering"
    peering_name =  "vnet-peer-to-steakguardian"
    vnet_rg_name = "RG_LHIND_AMS_P_VNET_HUB"
    vnet_name = "VNET_FD_AMS_HUB_P"
    remote_vnet_id =  module.data_vnet_stackguardian.virtual_network_id
    allow_forwarded_traffic = true
    allow_gateway_transit = true
    use_remote_gateways = false
    
   
}

module "vnet_peer_stackguardian_to_fwhub" {
    source = "../modules/vnet-peering"
    peering_name =  "vnet-peer-to-fwhub-p"
    vnet_rg_name = "RG_LHIND_SG_D_VNET"
    vnet_name = "VNET_SG_D_TEST"
    remote_vnet_id = module.data_vnet_fd_fwhub.virtual_network_id
    allow_forwarded_traffic = true
    allow_gateway_transit = false
    use_remote_gateways = true
    
    providers = {
      azurerm = azurerm.FD_PROD
    }
  depends_on = [ module.vnet_peer_fwhub_to_stackguardian ]
}
