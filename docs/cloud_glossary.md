# Glossary of Cloud Terms

## Why?

Researchers using the cloud must know a little about a lot of information technology to get computational work done in their domain specialty.   Most cloud glossaries are for systems administrators, not the rest of us.  This glossary is much more brief than Wikipedia and hopefully also provides the context a researcher needs to find what you need to use cloud services in your work.    Do you have an item to add? Please [contact us](contact.md)! 

## The Glossary

#### Azure Resource Manager
ARM

#### ARM Template
JSON-formatted file that the ARM can use to create resources for you.  Templates are a great shortcut and automation feature but difficult to edit.

#### Blob Storage (Azure)
Azure's object cloud storage, similar to S3 and google cloud storage buckets.  

#### CPU
Central Processing Unit

#### Arm CPU
Most computers run Intel CPUs, but another company has compatible processessor that are slightly different.  Some computational work is sensitive to CPU choice, and CPU choice can affect costs.  

#### DevOps
This has many definitions but for researchers the shortcut is using code to make IT infrastructure.  Helping developers (like you) do Ops (like sysadmins) with code.   see IaC.

#### File Storage (Azure)
Azure cloud storage that is more traditional file sharing, and that can be connected (mounted) to computers and other services using the SMB protocal, making it similar experience to departmental shared fileserver

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

#### Virtual Machine (VM)
Creating a simulated computer hardware using software, to be able run a guest operating system inside a host system, such that the guest thinks it's running on an actual computer.

#### Tensor Processing Unit (TPU)
[Google Tensor Processing Unit](https://en.wikipedia.org/wiki/Tensor_Processing_Unit) which leads to the question of "what is a tensor" and that depends on who you ask.  Complimentary to GPUs, used by deep learning libraries such as [TensorFlow](https://www.tensorflow.org/)

#### Service Level Agreement (SLA)
Level of service you expect from a vendor, laying out the metrics by which service is measured, as well as remedies or penalties should agreed-on service levels not be achieved.  In Cloud this is often spells out 'uptime,' which is percent of time the system is not down, e.g. 99.99%, and guarantees against data loss and availability.   For most research, uptime is not important as we are our own customer and can tolerate some downtime.   
