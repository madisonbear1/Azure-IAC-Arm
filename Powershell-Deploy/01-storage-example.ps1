# Demo exxample from the ARM Tutorial from adam Marczak - Azure for everyone
# https://www.youtube.com/watch?v=Ge_Sp-1lWZ4&list=PLGjZwEtPN7j8_kgw92LHBrry2gnVc3NXQ&index=1&ab_channel=AdamMarczak-AzureforEveryone
# This is to deploy a simple "make a  storag account ARM Template"

$rg = 'arm-introduction-01'
New-AzResourceGroup -Name $rg -Location eastus -Force

New-AzResourceGroupDeployment `
    -name 'New-Storage' `
    -resourcegroupname $rg `
    -templatefile '01-storage.json'

