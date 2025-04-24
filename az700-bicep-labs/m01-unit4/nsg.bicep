@description('Location for the NSG')
param location string

@description('NSG configurations')
param nsgRules array

resource nsgs 'Microsoft.Network/networkSecurityGroups@2023-02-01' = [for nsg in nsgRules: {
  name: nsg.name
  location: location
  properties: {
    securityRules: nsg.securityRules
  }
}]
