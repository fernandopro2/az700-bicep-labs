@description('Location for the resources')
param location string

@description('Virtual Network names')
param vnetNames array

@description('Address spaces for each Virtual Network')
param vnetAddressSpaces array

@description('Subnet configurations for each Virtual Network')
param subnetConfigs array

@description('NSG configurations')
param nsgRules array

module vnets './vnet.bicep' = [for i in range(0, length(vnetNames)): {
  name: 'vnetDeployment${i}'
  params: {
    location: location
    name: vnetNames[i]
    addressSpace: vnetAddressSpaces[i]
    subnetConfigs: subnetConfigs[i]
  }
}]


module nsg './nsg.bicep' = {
  name: 'nsgDeployment'
  params: {
    location: location
    nsgRules: nsgRules
  }
}
