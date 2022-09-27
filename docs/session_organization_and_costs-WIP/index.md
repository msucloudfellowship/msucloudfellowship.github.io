#  Cloud Services Organization

## Introduction

We might think of using cloud computing in 3 areas: using the resources (which is our real goal), definining and creating these resources, and manageing them.  

We may need a virtual machine to run our program to calculate or analyze our data, but we need to determine the properties of that virtual machine and create it first.  Surrounding all of that is how we interact with the cloud service to do that, how we estimate and observe the costs, manage and identify all the other components a cloud VM needs, and  make it as secure as possible.   

I'm lumping all of these last pieces into 'managing' cloud resources.  It may be the most boring of all the topics.   The concepts may cover any resource you create in the cloud, and in general apply to all cloud service providers.  However the details of _how_ you do it are very specific to each cloud vendor.   In fact the methods may be convoluted or less than straightforward, so there are many companies that provide additional tools just to manage cloud resources in a more consistent or easier way than the cloud providers allow you


## Costs

[Cloud Costs Basics](costs/azure_cloud_cost_basics.md)

## Service Level Model of Cloud

how that affects costs and security 

## Interfaces 

note: look for this content and pull from other sessions

### Web GUI

Azure Portal, Google Cloud Console (screenshot), Amazon log-in (screenshot)

Portal has dashboard that can be changed. 

### Command Line 

- az cli
- ARM templates
- 'bicep' = simplified ARM templates

### Programming Languages

- overview
- example with python, read and write from blob storage
- show where to find info on other languages
- we don't have time to go into detail on using other languages 

### Cloud Infastructure Systems

 - overview, why?
 - Terraform
 - Cloud Foundry
 - Ansible

 
## Workflow thinking

- workflow thinking
- reproducibility in Science
- goals: not the much different from reproducibiel code easy maintainance
- Terms 'devops'  'IaC'  'CI/CD'   
- you will see professional workflows referenced and may find tutorials taking you down t this path but it's not essential.  Geared for System Admins and commercial software shops
- for large open source projects it may be essential


## Tips for Staying Organized

**using Azure 'Tags'**

- Optional: Short note about [Using Azure Tags for Organization](azure_tags.md) ( Pat Bills, MSU)
- ["Use tags to organize your Azure resources and management hierarchy"](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources?tabs=json) from Microsoft


## Monitoring

You want to keep an eye on the resources you create: how healthy are they, are they performing as expected?  Is there some problem that makes them slow or unresponsive?  This is especially true of servers, created by IT staff, that others are using that need to stay up and running.    For us as researchers creating resources to do our calculations, we want to know how long it's taking and hence how much will it cost?  Do we need to add more power to get it to work?   

This is an esoteric topic and is really specific to each type of service, but it's something to consider as 1) you may need to engage in a resource outside of the azure portal (e.g. in a VM, log-in and check the performance with standard tools like 'top' in Linux and the task manger in Windows) 2) create (and pay for!) yet another cloud resource for collective and 'managed' monitoring.     

Why use cloud monitoring at all?  If you were running a bunch of your own computers in your lab, you would just sit down and check on them using tools the operating system provided.  In many systems you open and read the 'logs' or text files with a stream of the events and times they occured.  

Machines in the cloud provide new challenges.  An obvious one is to be able to see statistics for many resources at once.   How then does Azure collect data from each machine into central place and then let you browse it?    A second challenge is, what happens to that information for a virtual machine that has crashed and is unresponsive, or has been intentionally turned off and deleted?   

### Monitoring Examples

For Azure virtual machines, Azure offers ["Azure Monitor"](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/monitor-virtual-machine).   Using it is completely optional and I don't have activities related to this service.   If for your project you are working with a group of VM's, you are interested in performance, or you need performance information because your analysis is not completing then I would investigate this service. 

  


  

