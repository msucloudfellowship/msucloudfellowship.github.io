# Azure Organization

*This is a brief description of how Azure cloud services are organized for those just getting started with Azure.  It's my own take on this topic written with researchers in mind.  However it should not replace Azure official documentation.  The link below has a great summary of how it's setup.  However you may ignore all the other sections in the "Azure setup guide" as this is geared for IT professionals adoption cloud for their own organization*

Microsoft Azure Documentation: [Organize your Azure resources effectively](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-setup-guide/organize-resources?tabs=AzureManagementGroupsAndHierarchy)


![Azure Organization diagram from Microsoft Documentation](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-setup-guide/media/organize-resources/scope-levels.png)

Azure is organized by directories of user accounts and subscriptions.  All resources must be created in exactly one "subscription" which is a method for billing and for setting permissions.  Your organizations "directory" is where your user account lives, but you may have access to multiple subscreiptions with one user.  MSU created a "Cloud Computing Fellowship" subscription for all activities and resources for this, and we added your MSU directory accounts this subscription.   

Cloud computing components are known as "resources," which AWS defines as "an entity you can work with."   Anything you can create using a cloud interfaces is a "resource."   

To help with more organization, in Azure, resources belong to a resource group.   Resource groups can collect resources by project which could still have hundreds or just a few resources.  There is no restriction and up to you to organize how it works for you.  For example, a lab could have a resource group for each member, or perhaps a resource group for each project, and members collaborate on those projects.   

It's also possible to restrict access to resource groups, e.g. a resource group for a project may only allow those who are working on the project access to that resource group.  Azure has other organizational tools such management groups across subscriptions, complex identity management and role-based access control (RBAC) that we won't cover here.  

However, this is mostly for organization and resources may be accessed from one resource group to another, and even across subscriptions.   Applying this organization scheme requires practice and sometimes vigilance.   

For most campuses, researchers will want to have their IT department create the subscriptions and billing as they often can get discounted prices or fee waivers.   When your research group is ready to pay for services here at MSU, see the link to the "cloud services request form" on https://tech.msu.edu/network/cloud-services/ 

Summary of top-down Azure Organization: 

 - **Directory** : (MSU account). All account must come from a directory (but an account can be multiple directories)
     - **Management groups** : we won't use these, for admins to manage multiple subscriptions)
         - **Subscription** : tied to a billing account, and where all resources are created.  
             - **Resource Group** : organizational tool for resources.  Think of it as a "folder" in your file system
                 - **Resource** : any cloud entity you may work with (e.g. create, configure, destroy)
 

Finally, it is possible to log-in to the Azure portal (e.g. your MSU account) and not have a valid subscription and not be able to create or access any resources.  If you have never used Azure before, you may be asked to create a free trial.   If are a you need to use Azure (e.g. for training) and do not have access to an MSU subscription, you may want to use a non-MSU email address and create your own account.  
  
Azure "tags" add added to resources (including resource groups) and are a way to identify and locate resources by search as for many other services.   They are optional but highly recommended to use a tagging scheme to help organize your resources and for cost analysis.   You can use any keys and any values you find useful.  

## Azure Locations or Regions

Subscriptions are for accounting only and don't represent concrete cloud resources.  However cloud resource must reside in computer somewhere, and hence have a location.   Locations for cloud providers for can be thought of inside one of their massive data centers.  In Azure, "region" and "location" are used interchangably (some interfaces use 'location, some use 'region')

Resources and Resource groups must be assigned a location when you create them.   considerations are 1) does the location actually provide the services you need (not all locations have all cutting edge products) and 2) is the location close to you to reduce time it takes for data to cross the internet to/from you and finally 3) is there some restriction based on your country of origin.   

Most of the time, simply choose the default which is East US which almost always has the latest features.  For some advantage for data transfer, choose (US North Central US).   However as a rule select a location/region and use that across all of your resources so that, for example, your data files in storage are close to (in the same data center as) a computer you may create. 

Regions become very important for companies that offer services around the world and want to reduce the connection time for their customers.  It's also possible to have back-ups of resources in different region to protect against natural disasters.  