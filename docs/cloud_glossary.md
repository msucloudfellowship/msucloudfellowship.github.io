# Glossary of Cloud Terms

## Why?

Researchers using the cloud must know a little about a lot of information technology to get computational work done in their domain specialty.   Most cloud glossaries are for systems administrators, not the rest of us.  This glossary is much more brief than Wikipedia and hopefully also provides the context a researcher needs to find what you need to use cloud services in your work.    Do you have an item to add? Please [contact us](contact.md)! 

#### Other Glossaries

https://www.cloudbank.org/cloud-terms

## The Glossary

#### Arm CPU
CPU from "Advanced RISC Machines, ltd.  While historically most computers used Intel CPUs, ARM provides an alternative CPU that is becoming more popular and present as an option in HPC and Cloud [Virtual Machine](#virtual-machine) options.  The vast majority of software written for Intel computers is compatible with ARM.  Some computational work is sensitive to CPU choice, and CPU choice can affect cost and speed of excecution, so it may be important to understand the implications of this choice of CPU.  

#### ARM Template
A specification file listing all of the cloud resources and configuration settings tha that the Azure [Resource Manager](#resource-manager) can use to create resources for you when you submit it a certain way.   Templates are a great shortcut and automation feature but difficult to edit.  For details see Azure Documentation: [What are ARM templates?](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)

#### Azure Resource Manager (ARM)
see [Resource Manager](#resource-manager)

=#### Blob Storage
Azure calls there object cloud storage "Blobs".  It is similar to Amazon Web Service 'S3' and Google cloud storage buckets.   Azure Documentation: [Introduction to Azure Blob storage](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)  While it's possible to 'mount' blob storage to linux VMs using 'blob fuse' or similar packages, it can not work as you may expect and so in practice Azure Files are a better solution for that. See [File Storage](#file-storage-azure)

#### Client-Server
Client/Server model of computing is something we use everyday but perhaps dont' use this term.   See https://techterms.com/definition/client-server_model   You are used to using maybe a dozen clients everyday (phone apps, web browser, ssh to connect to a remote linux, Remote Desktop client to connect to remote desktop server, etc).  Cloud computing provides all the infrastructure needed to create servers quickly and easily. 

#### Containers
Or Docker Containers (not all containers need to be Docker the vast majority of container system use Docker).  For R users, see https://colinfay.me/docker-r-reproducibility/   For Python users, there is https://www.netguru.com/blog/python-docker-tutorial  although you could read either. 

Linux Containers is a term for a collection of methods and technologies that allows a multiple isolated systems to be run on one Linux computer.   This is differnet from virtual machines in that a VM host provides abstract or virtualized hardware so each VM requires it's own portion of memory and CPU cores whereas containers share the main part of Linux (the kernel), memory and CPU more dynamically.   The primary comercial company for containers is "Docker" so Docker is sometimes used synonymously with 'container' but it is just one form. 

In addition to being more efficient than VMs, most container systems have a system and scripting language for building containers.  The means onecan provision an entire system from code.   Containers are widely use to package and distribute complex research software systems for example Bioinformatics workflow system "Cromwell."  This way reseearches can download and use a pre-installed system without the trouble of getting all of the pre-requistes (dependencies) installed on their machine.   

#### CPU
Central Processing Unit, the main 'chip' of a computer, and a core component when specifying a [Virtual Machine](#virtual-machine) 'size'


#### DevOps
This has many definitions but for researchers the shortcut is using code to make IT infrastructure.  Helping developers (like you) do Ops (like sysadmins) with code.   see IaC.

#### Docker
Docker is the most prevalent form of "Containers", e.g Docker is to containers as google is to search.   See containers above for details.  Note that Docker is many things as once:  a method and format for Linux containers, a program for working with container ( e.g. `docker build...`), a Company, and that's company's hub or repository for storing and access free containers (or your own).    Cloud companies also have "hubs" or repositories for storing your own Docker containers.    

#### File Storage (Azure)
Also called "Azure Files." Azure cloud storage that is more traditional file sharing, and that can be connected (mounted) to computers and other services using the SMB protocal, making it similar experience to departmental shared fileservers.   See https://azure.microsoft.com/en-us/services/storage/files/  and compare with [Blob Storage](#blob-storage)

#### Firewall
A common concept in networking, firewall software on a computer's networking components limits which kind of traffic can come in or out, and restricts which computer internet addresses can connect. Best practices suggest closing all connections via the firewall, only opening those connections for services you need, and only to those users (e.g. your own computer) you need to. Azure additionally has an option to "allow connections from Azure networks" so that you can freely connect from the portal, 'cloud shell', or connect from on azure service to another.   The implication is that you trust all Azure services. 


#### GPU 
From Wikipedia: [https://en.wikipedia.org/wiki/Graphics_processing_unit](https://en.wikipedia.org/wiki/Graphics_processing_unit)  GPUs can be very helpful for some code written to use them, especially many machine learning libraries, and Virtual Machines may be provisioned with GPUs.  

#### Infrastructure as Code (IaC)
In stead of using a GUI, or manual steps to create cloud computing, cloud resources may be created using scripts that interact with the cloud provider's api, and additional scripts can configure individual resources (such as to install software on a [VM](#VM) or configure a database).   Doing this kind of "provisioning" with scripts makes it reproducible and debuggable which is at the heart of the Workflow or [DevOps](#DevOps) mentality. 

#### IP Address
a unique string of characters that identifies each computer using the Internet Protocol to communicate over a network.   Your computer will have a different IP address depending on where you are located (home, work, field).   In addition, a home wifi router will assign a 'local' ip address for inside your home, but your 'public' internet IP address will be different.  To find your own IP address, simply google "what is my ip."   All Azure services (VMs, data systems, etc) are assigned IP addresses via networking.  see https://docs.microsoft.com/en-us/azure/virtual-network/public-ip-addresses

 
#### Object Storage
From [NetApp "What is object storage?](https://www.netapp.com/data-storage/storagegrid/what-is-object-storage/):  "...also known as object-based storage, is a strategy that manages and manipulates data storage as distinct units, called objects. These objects are kept in a single storehouse and are not ingrained in files inside other folders. Instead, object storage combines the pieces of data that make up a file, adds all its relevant metadata to that file, and attaches a custom identifier." Blob storage is object storage.   Objects (e.g. files) are retrieved from a large system via their identifier, not their name.   Amazon S3 and Google Cloud storage are also object stores.  

#### On-prem
"On Premise" refers to technology (computers, disks, networking, etc) that are on your institutions computer centers or in your own lab.   Note that for some researchers, "on-prem" can still mean remove (e.g. our HPC is only accessible remotely, so it may not be obvious that it's on premise to users).  

#### Resource
For AWS and Azure, a resource is an entity that you can work with.  The means something you can created, edit or delete via their cloud interface.  Could be a computer (virtual machine), a whole cluster (azure batch pool), or some tiny network setting (IP address). Resoures almost always cost money.  Resources are listed in your standard dashboard.  

#### Resource Group
Organizational scheme unique to Azure.  Nearly all resources must be part of a group and the resource group must be selected (or created ) when creating other resources.   Resource groups could be used for specific projects, for 'personal' resources used for multiple projects (or for azure things like cloud shell).  

#### Resource Manager
Azure calls the system they use to interface between you and cloud resources the "Azure Resource Manager" or ARM.   There used to be a different way to interact with Azure resources, hence this has a specific name and is referred to in Microsoft documentation.  

#### Serverless

This buzz-word applies to many different cloud services, primarily those that the cloud company manages for you, usually referring to cloud functions (AWS Lamba) and sometimes others in the  "Platform As A Service" [service model](#service-models).    The origin is that, if you run virtual machines with operating systems and software install, your are maintaining servers to support that software.  If the cloud service does not require you to provision and maintain a server, it is often marketed as "serverless" (e.g. recent marketing of [Azure Files](https://azure.microsoft.com/en-us/services/storage/files/#overview) as "Serverless file shares" where on-premise File Sharing requires staff to manage and maintain Windows File Servers.  

#### Service Models

This is related to the "... as a service" (..aaS) phrases defined in the NIST document which included  "Infrastructure", "Platform" and "Softare" as a service  (IaaS, PaaS and SaaS).  It's a conceptual organization of cloud services based on the stack model of computating with the infrastructure (network, hardware, CPU, etc) at the bottom and Software on the top.  See [The NIST Definition of Cloud Computing](https://csrc.nist.gov/publications/detail/sp/800-145/final)

#### Service Level Agreement (SLA)
Level of service you expect from a vendor, laying out the metrics by which service is measured, as well as remedies or penalties should agreed-on service levels not be achieved.  In Cloud this is often spells out 'uptime,' which is percent of time the system is not down, e.g. 99.99%, and guarantees against data loss and availability.   For most research, uptime is not important as we are our own customer and can tolerate some downtime.

#### Services
Cloud "services" are often bundles of [resources](#resource) pulled together for coordinate function.   Cloud companies offer hundreds of often closely overlapping services.   

#### Tags
AWS and Azure allow you add meta data to resource in the form of tags (e.g. hashtags, etc) which are keys and values.     When you create a resource you can add a tag indicating the project it is for e.g. "project" = "dna-methylation"   To add more detail if your DNA methylation has multiple aspects or experiments, add more tags like "experiment" = "Fall 2021"

For workgroups it's stronlgy suggested you add a "created_by" = your netid because it's often difficult in Azure to determine who created a resource if it needs to be turned off or deleted.  

[Use tags to organize your Azure resources and management hierarchy](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources?tabs=json)

#### Tensor Processing Unit (TPU)
[Google Tensor Processing Unit](https://en.wikipedia.org/wiki/Tensor_Processing_Unit) is specialized computer chip similar to [GPUs](#gpu), used by deep learning libraries such as [TensorFlow](https://www.tensorflow.org/) ( which leads to the question of "what is a tensor" and that depends on who you ask but similar to matrix.  

#### Virtual Machine
(aka VM) Creating a simulated computer hardware using software, to be able run a guest operating system inside a host system, such that the guest thinks it's 
running on an actual computer.
