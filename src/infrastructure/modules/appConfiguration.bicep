param name string
param location string
param skuName string

resource configurationStore 'Microsoft.AppConfiguration/configurationStores@2023-03-01' = {
  name: name
  location: location
  sku: {
    name: skuName
  }
}
