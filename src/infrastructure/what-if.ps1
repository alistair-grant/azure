[CmdletBinding()]
param (
    [Parameter()]
    [string]
    ${Location} = 'AustraliaEast'
)

az deployment sub what-if --location $Location --parameters main.bicepparam location=$Location
