# Create a Virtual Machine using PowerShell

# To know what and all azure commands we have using powershell
# Ex: azure web app
# > Get-Command *AzWebApp*
# It list all the commands match with AzWebApp

# Deploy/Create Virtual machines using the following ways,
<# 
1. Using Azure Portal
2. Using ARM (Azure Resource Manager) - Deploy and redeploy as many times
3. Using Azure CLI
4. Using Azure Powershell
#>


# Using Azure Powershell
1. > Connect-AzAccount 
   <#
     => It opens a popup to authenticate
     Note: Once authenticate successfully then we see following details,
     Details in output: Account, Subscription,TenantId, Environment
   #>

2. > Get-AzVm 
   <#
   => Get VMs which we created under this subscription
   Details: ResourceGroupName, Name, Location, VmSize, OsType, NIC, ProvisioningState, Zone
   #>
   
3. > New-AzResourceGroup -Name powershellgroup -Location EastUs
   <#
   Note: Name and location is all depends on your choice
   This will create a new resource group.
   #>
4. > New-AzVm -ResourceGroupName powershellgroup -Name azVMName -Location EastUs -VirtualNetworkName "mynewpowershellvnet" -SubnetName "default"
     -SecurityGroupName "mysecurtygname" -PublicIpAddressName "mypublicIp" -OpenPorts 80,3389
   #Note: This will popup to enter user and password
5. > Stop-AzVm -Name "azVMName" -ResourceGroupName "powershellgroup"
6. > Start-AzVm -Name "azVMName" -ResourceGroupName "powershellgroup"
7. > Re]Start-AzVm -Name "azVMName" -ResourceGroupName "powershellgroup"

# Command to create for Azure Webapp
# 1. Create a new azure resource group live we have above
# 2. Create a new app service plan
     > New-AzAppServicePlan -ResourceGroupName "<Resource_Group_Name_Replace>" -Name "<App service plan name>" -Location "EastUs" -Tier "Free"
     #Note: -Tier is based on usage
# 3. Now its time to create a new webapp
     > New-AzWebApp -ResourceGroupName "<Resource_Group_Name_Replace>" -Name "Name for your webapp" -Location "EastUs" -AppServicePlan "Add the app service plan"

<#
  Even we can start and restart the VMs as well using this powershell
#>

<#
Reference: When a vm created in azure, the following resources are going to create
 - Data disk 
 - Network Security Group
 - IP Address
 - Virtual Network
 - Network Interface Card
 - Virtual machine
 - [Optional] Shutdown resource
#>
