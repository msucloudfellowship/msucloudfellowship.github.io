# Session 2: What is the cloud and how does it work?  An introduction using storage and virtual machines

### About this Session

We are providing materials and activities for this session for you to read and attempt at your own pace.   Please attempt these and see how far you can get.   Feel free to post on Microsoft Teams if you have any issues, find things that need correcting, or have general questions.   

We will host an optional, additional, in-person session to provide help to anyone who wants to attend, Friday September 23 2pm to 3:30p.  Since this is outside of pre-arranged schedule, anyone who would like help but can't attend during this please contact us and we will arrange a time for you.   

We will discuss all of this material and more during our next regularly scheduled in-person session Friday September 30th. 

### Overview

![Chaplin still from Modern Times 1936](../img/chaplin_clockworks.jpg){ align=right} When many people think of "cloud computing" they think of computers in the cloud, or virtual machines.   Cloud computing companies offer much more than just virtualized hardware, but this is a good place to start.   This session is designed to be a hands-on workshop where we walk-through creating the resources needed for to run a computer in the cloud, logging into this computer, copying data and using that data in a program.    At the end of the session you should have a good introduction of what it means to "cloud compute."

- **Overview Presentation:** [Cloud Concepts & Virtualization (PDF)](CCF-session-2-how-to-cloud-slides.pdf) - Pat Bills, MSU
 

## About the Azure Portal

We demonstrated the azure portal quickly in our last session when we [set a budget alert](../session_introduction/cost_alert.md).   The following dives into more detail about 'resource groups' which is the core of how Azure is organized.  Note that, as we get started, fellows have access to just a single resource group that we've created for you.  You can't create your own but you can create as many resources as yuo need inside this single resource group.  

#### Azure Portal Readings

- Top-down description of how [Azure is organized](azure_organization.md)
 

#### Azure Portal Activity** [Using the Azure Portal : tutorial and video](azure_portal_walkthrough.md)

### Optional Follow-ons: 

**Azure Storage**

The Activity above had you creat a 'storage account' with no background.   If you are interested in learning more about storage, this is a prety good, high-level introduction : 

[Edureka Azure Storage Tutorial](https://www.edureka.co/blog/azure-storage-tutorial/)  (there are several pop-ups and ads, but it's a good level of of information )

You will see there are different types of storage, but all types must be inside a "storage account" and this "storage account" must be inside a resource group.  

We will re-visit concepts and usage of cloud storage in detail, as it's a core aspect of cloud computing.    

## Virtual Machines
 
We introduced "virtualization" during our introduction.  For IT this means flexibly creating multiple resources on one piece of hardware using software.  The main use case is many virtual computers (or servers) on one large computer hardware.   This was create prior to cloud, but when you create your own computer in the cloud, it's based on the technology.  To a user it may seem very similar, but to the systems IT engineer, it's very different.     However these readings may help give you an 

 **Readings**:
- [What is a Virtual Machine (VM)?](https://azure.microsoft.com/en-us/overview/what-is-a-virtual-machine/)  Introduction from Microsoft
- [What is a Virtual Server?](https://www.youtube.com/watch?v=42fwh_1KP_o) Youtube Video from 
IBM describing how companies (including MSU!) use virtualization to run multiple computers on one server to optimize the use of space in a data center. 
- [What's the difference between cloud and virtualization?](https://www.redhat.com/en/topics/cloud-computing/cloud-vs-virtualization) from RedHat, a Linux Operating system company


- **Activity:** A long activity to [create (and deleting) a Virtual Machine with the Azure Portal](azure_vm_walkthrough.md) for both windows and Linux. 

#### Why create a VM

What is a VM good for?   The activity above does not discuss why you'd create a VM and connect with remote desktop, only that you can do it.   We will discuss that at our next session.  Can you think of possible use cases for your research, or other types of research, for a remote computer that could be very powerful or very small?



<!-- note: move costs, service levels and other things to a later session -->

<!-- 

  - [The NIST Definition of Cloud Computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf)  The framework that most widely used to describe aspects of cloud computing, and categorize cloud sevices. 
  - [Microsoft Reference Architecture: What is Infrastructure as a Service?](https://social.technet.microsoft.com/wiki/contents/articles/4633.microsoft-reference-architecture-what-is-infrastructure-as-a-service.aspx)
  - [Orientation Azure Portal](https://docs.microsoft.com/en-us/azure/azure-portal/azure-portal-overview#getting-around-the-portal)
  
#### Cloud costs (it's own distinct topic)

- [Determining Azure Costs](costs/azure_cloud_cost_basics.md) 
- 
additional topic
[Summary of Cloud Interfaces](intro_to_cloud_interfaces.md)
- -->




