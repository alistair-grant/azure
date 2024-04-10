targetScope='subscription'

param location string
param resourceBaseName string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'rg-${resourceBaseName}'
  location: location
}

module appConfiguration 'modules/appConfiguration.bicep' = {
  name: 'appConfigurationModule'
  scope: resourceGroup
  params: {
    name: 'appcs-${resourceBaseName}'
    location: location
    skuName: 'standard'
  }
}
