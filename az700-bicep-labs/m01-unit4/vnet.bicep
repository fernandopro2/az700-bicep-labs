@description('Location for the virtual network')
param location string

@description('Name of the virtual network')
param name string

@description('Address space of the virtual network')
param addressSpace array

@description('Array of subnet configurations')
param subnetConfigs object


resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: addressSpace
    }
  }

  resource subnets 'subnets' = {
    name: subnetConfigs.name
    properties: {
      addressPrefix: subnetConfigs.addressPrefix
    }
  }

}

output vnetId string = vnet.id
