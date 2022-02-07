# Powershell supports CLI Commands
# Either we directly run the following commands in portal.azure.com site itself or download azure cli and run the following commands. But there are few more to run to connect azure when you ar running in local system.
# Reference: https://docs.microsoft.com/en-us/cli/azure/service-page/list%20a%20-%20z?view=azure-cli-latest

# To list all the resource group under the subscription
> az group list
# Output: Returns in JSON Format

> To create a new resource group
> az group create --name <cligroup> --location eastus
# output: Returns in JSON Format

# To create a new VM
> az vm create --resource-group <groupname> --name <Vmname> --image win2016datacenter --admin-username <nametologin>
# Note: prompt to enter password
# Output: Create VM

# To restart vm
az vm restart -g MyResourceGroup -n MyVm

# To start VM
az vm start -g MyResourceGroup -n MyVm

# To stop VM
az vm stop --resource-group MyResourceGroup --name MyVm
