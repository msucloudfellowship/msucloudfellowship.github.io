# Azure Resources

## General Resources 

Main Azue Documentation : https://docs.microsoft.com/en-us/azure/ 

List of All Azure Services : https://portal.azure.com/#allservices 

Azure Tips and Tricks : https://microsoft.github.io/AzureTipsAndTricks/

Azure Portal "How to" series - focused on using the Azure portal to do several different things.  This is mostly about the services themselves, not the portal, and many topics do not apply to us (e.g. Azure Arc) but there are some very useful videos : https://youtube.com/playlist?list=PLLasX02E8BPBKgXP4oflOL29TtqTzwhxR

These look like really good intros to Azure, but requires a time investment.  The examples are not really research computing examples but may be valuable learning examples.  

**Microsoft Learn**: 
  - [Azure for Researchers part 1: Introduction to Cloud Computing](https://docs.microsoft.com/en-us/learn/paths/researcher-introduction-to-cloud-computing/)
  - [Azure for Researchers part 2: Cloud Security and Cost Management](https://docs.microsoft.com/en-us/learn/paths/researcher-cloud-security-cost-management/?WT.mc_ID=academic-31612-leestott)


## Interface: Azure Portal

Azure Portal Documentation :  https://docs.microsoft.com/en-us/azure/azure-portal/ 

Microsoft Azure Hierarchy: [Organize your Azure resources effectively](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-setup-guide/organize-resources?tabs=AzureManagementGroupsAndHierarchy)


Re-organize your portal view by creating a new dashboard (optional) : https://docs.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards

Azure portal productivity Tips : https://microsoft.github.io/AzureTipsAndTricks/blog/tip329.html#azure-portal-productivity-tips


https://microsoft.github.io/AzureTipsAndTricks/blog/tip329.html

## Interface: Command Line

Command-line progamming of Cloud Services

 * Azure PowerShell (Windows) https://docs.microsoft.com/en-us/powershell/azure/ 

    * Introduction to PowerShell : https://docs.microsoft.com/en-us/powershell/azure/get-started-azureps?view=azps-3.0.0 

 * Azure Command Line Interface (CLI) (MacOS, Linux): https://docs.microsoft.com/en-us/cli/azure 

    * Introduction to Azure CLI https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest 


 
## Storage

Create a Storage Account: 

https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account 

Azure Storage Explorer: https://azure.microsoft.com/en-us/features/storage-explorer/ 

Blob Storage Documentation: https://docs.microsoft.com/en-us/azure/storage/blobs/  

Create and Manage a Storage Account: 
https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account 

 
Using the CLI with Storage Reference:
https://docs.microsoft.com/en-us/cli/azure/storage/account 


Using PowerShell Storage Reference:
https://docs.microsoft.com/en-us/powershell/module/azure.storage 

Create blob storage with CLI:

https://docs.microsoft.com/en-us/azure/storage/common/storage-azure-cli 


Create blob storage with PowerShell:

https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-powershell 
 

## Compute 

Overview of Compute Options: https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/compute-overview 

Choosing an Azure Compute Service (Decision Tree):  https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/compute-decision-tree

 
## Interface: ARM templates

Azure Resource Manager Templates are JSON-formatted configuration files that dictate which resources to create.   

Overview of ARM templates:  https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/overview

explore quick start ARM templates (web): https://azure.microsoft.com/en-us/resources/templates/

explore quick start ARM templates (github): https://github.com/Azure/AzureStack-QuickStart-Templates

  * many of these github repositories include a "deploy to Azure" button that will run the template via the portal and create resources. 


## Programming with SDKs

### R and Azure 

https://blog.revolutionanalytics.com/2018/12/azurestor.html 

https://cloudblogs.microsoft.com/opensource/2019/07/01/azurer-available-create-manage-monitor-azure-services-r/ 

https://docs.microsoft.com/en-us/azure/architecture/data-guide/technology-choices/r-developers-guide 

https://docs.microsoft.com/en-us/azure/machine-learning/studio-module-reference/r-packages-supported-by-azure-machine-learning 

https://github.com/Azure/AzureContainers 

https://github.com/Azure/AzureR 

https://github.com/Azure/AzureRMR 

<!-- check that ml studio is still supported 
https://www.r-bloggers.com/how-to-evaluate-r-models-in-azure-machine-learning-studio/ -->

 

### Python and Azure 

https://azure.microsoft.com/en-us/develop/python/ 

https://docs.microsoft.com/en-us/azure/python/ 

https://github.com/Azure/azure-sdk-for-python 

https://github.com/Azure/azure-storage-python 

https://azure.github.io/azure-sdk/releases/latest/all/python.html (Note that pypi.org/project/azure/  is deprecated/obsolete if you find that via google)


### MATLAB and Azure 

https://blogs.msdn.microsoft.com/uk_faculty_connection/2017/06/29/running-matlab-on-azure-provision-a-matlab-distributed-computing-server-using-azure-vms/ 

https://github.com/mathworks-ref-arch/matlab-on-azure 

https://www.itcentralstation.com/products/comparisons/mathworks-matlab_vs_microsoft-azure-machine-learning-studio 

https://www.mathworks.com/solutions/cloud.html 


### Microsoft Azure Cosmos DB

CosmosDB is a very large scale data system that can act like other database systems including SQL, MongoDB (a popular no-sql database), and others.  
It's advantage is that it can handle extremely large data sets  (65tB) but is easy to get started.    Google and AWS have similar offereings ( "BigQuery" and "Aurora" respectively). 

If your data is not large, consider using SQL data systems which are also very widely used (and can be used on your own computer)

Intro: https://docs.microsoft.com/en-us/azure/cosmos-db/introduction

It can be free to use, but you have to turn that on when creating the service for your account: https://docs.microsoft.com/en-us/azure/cosmos-db/free-tier

You can run a notebook inside the databaase to queery data with python : 

  * Notebook Description: https://docs.microsoft.com/en-us/azure/cosmos-db/cosmosdb-jupyter-notebooks 
  * Service announcement: https://azure.microsoft.com/en-us/blog/analyze-and-visualize-your-data-with-azure-cosmos-db-notebooks/
  * Video: https://www.youtube.com/watch?v=OrnZMkP5Eq4&list=PLLasX02E8BPBKgXP4oflOL29TtqTzwhxR&index=7


### Cloud Architecture

This section has resources for advanced to intermediate cloud users who are interested in much more details that most researchers will ever need, and are really geared for IT staff.  However, sometimes to find insight into how to approach your problem (especially for cloud timing ooptimazation projects) these may have useful sections. 

**Microsoft Azure Infrastructure Services for Architects** by John Savill, Oct 2019, available from the MSU Library : http://catalog.lib.msu.edu/record=b13538669~S39

Azure has changed since 2019 but may still be relevant