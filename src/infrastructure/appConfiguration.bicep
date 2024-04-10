param configurationStoreName string
param configurationStoreLocation string
param configurationStoreSku string

resource configurationStore 'Microsoft.AppConfiguration/configurationStores@2023-03-01' = {
  name: configurationStoreName
  location: configurationStoreLocation
  sku: {
    name: configurationStoreSku
  }
}
