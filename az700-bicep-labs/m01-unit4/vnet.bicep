param name string
param location string
param addressSpace array

resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: name
  location: location
  properties: {
     addressSpace: {
      addressPrefixes: addressSpace
     }
  }
}

output id string = vnet.id
