# Session 3: Cloud Storage

![storage_units](../img/storage_units.jpg)

## Introduction

Central to using cloud for nearly all services is storing data.   Cloud storage is quite different from what most are used to related to saving a file to your disk or USB removable media or even our HPC.   During our [workshop on creating a VM](../session_how_to_cloud) we didn't use cloud storage, we simply create a VM "virtual disk" that is attached to the VM just like your hard drive is attached to your own computer.   However there are disadvantats to this : 
  1. the main OS disk is typically deleted when the VM is deleted, although yuo can create a 'durable' disk to share
  1. the data on the main OS disk is tied to that Virtual Machine and hence that operating system, that is, it's typically unacceesbile from other cloud services 
  1. it is limited in size.  The largest of virtual disks are around 1 TB.  Azure Cloud storage accounts are limited to 5 TB and you may have multiple storage accounts.   
  1. You can only move data to/from a virtual or shared disk storage using a virtual machine
  1. Most importantly virtual disks very expensive comparewd to cloud storage 
  
Cloud companies think of "storage" as anything that save files, or perhaps more importantly anything they can market to you as something to save files.   

## Readings

  - [Storage as a Service](https://s3.us-east-2.amazonaws.com/a-book/storage.html) from "Cloud Computing for Science and Engineering"  
  - Optional, long but a good intro to Azure storage: 
    Microsoft Learn [Explore Azure Storage services](https://docs.microsoft.com/en-us/learn/modules/azure-storage-fundamentals/)
  - [Table of Azure Storage Product Offerings](https://azure.microsoft.com/en-us/product-categories/storage/)
  - [Azure : Intro to azure storage](https://docs.microsoft.com/en-us/azure/storage/common/storage-introduction)
  - Slides/Lecture: [Azure Cloud Storage for Researchers](azure_cloud_storage_for_researchers.html) with links for details on each slide

  - optional [Understanding block blobs, append blobs, and page blobs](https://docs.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs)

## Activities

  - Download and install the [Azure Cloud Storage Explorer](https://azure.microsoft.com/en-us/features/storage-explorer/)  See the **"Download now"** button at the top of that page.  You may review the content of the page
  - complete exercises in [Using Azure Cloud Storage](exercise_using_azure_cloud_storage.md) to create and use storage
  - [Azure Storage Pricing Exercise](storage_pricing_exercise.md) 
  

## Session 3 Meeting: About cloud storage

 - About Projects, Mahmoud Parvizi
 - Discussion and Review of previous sessions: 
     - Using the Portal
     - Creating and Using Virtual Machines
 - What is cloud storage? 
     - concept review: cloud storage vs VM disks
     - discuss exercises to be worked on next week
 - Review of Broad Cloud Concepts: 
     - On-Demand, Compute, Storage, Identity Management
 - Discussion : future activities and needs


## Optional Activity: 
 
For HPC Users, how do you move your data to and from the Cloud? [See our tutorial and try it yourself](how_to_hpc_and_cloudstorage.md)

Requires using Azuyre po

#### Python And Cloud Storage

For Intermediate Python users, and if you have time and interest, consider this tutorial from Azure:
   [Quickstart: Manage blobs with Python v12 SDK](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-python)

- Requirements:
  - use the blob storage account you created in the excercise above
  - familiarity with Azure portal 
  - Python installed on your cmputer (suggest python 3.6 minimal)
  - familiarity with the terminal and command line
- We can only provide help/troubleshooting after the workshop session

