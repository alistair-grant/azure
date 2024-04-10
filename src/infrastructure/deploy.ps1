[CmdletBinding()]
param (
    [Parameter()]
    [string]
    ${Location} = 'AustraliaEast'
)

az deployment sub create --location $Location --parameters main.bicepparam location=$Location
