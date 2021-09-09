# Workshop : Creating your own cloud computer

## Introduction

This workshop walks you though , using Microsoft Azure, the creation of a cloud virtual machine and opens access to it.  We will use command line access to use the remote machine to download data and run a calculation.   this is a similar experience to using any remote Linux system, such as the MSU HPCC.   

## Pre-requistites

  * Microsoft Azure account (provisioned for participants)
  
  <!--    Participants will have this tested during the first meeting 
        instal the following on your computer : 
    * Remote Desktop software
    * Windows : comes with ensure it's available
    * MacOS : install from app store [Microsoft Remote Desktop](https://apps.apple.com/us/app/microsoft-remote-desktop/id1295203466?mt=12) 
  -->
  * No previous experience with cloud virtual machines necessary


## Using the Azure portal to create a resource group

(should this be creatd ahead of time?)

## Create a virtual machine using a template

Create a data science virtual machine using a template.  

1. portal create...
1. in search bar type "data science virtual machine
1. select "d s v m Ubuntu"
1. select "pre-configured"
1. click "dev test" and then below click "general purpose", and then 'next'
1. "Basics" Section: in next screen select or entered the following options. 
    - Resource Group: select your resource group
    - VM Name: please enter a name with the following pattern cf-dvsm-netid using your own netid
    - Region : select the default
    - Image : should say "Data Science Virtual machine - Unbuntu 18.0.4 - Gen 1"
    - Azure Spot Instance : leave unchecked
    - Size :  Standard_D2s_v3 ($80/month) *note: it will only cost pennies per hour*
    - Administrator account : select "password"  *note: ssh key is more secure but requires time consuming setup*
    - Username : enter your netid *this is easy to remember*
    - Password : please enter a complex password *don't use your actual netid password, also write it down as we will only use it once and it can't be recovered*
    - click "next (disks)"
<!-- 1. "disks" section : use all defaults, simply click 'next...'
1. "Networking" : use all defaults, simply click 'next...'
1. "Advanced"  : use all deafults, simply click 'next...'
1. "Tags:  -->
1. Note in this "Create a Virtual Machine page, there are several sections across the top
    `Basics  Disks  Networking  Management  Advanced  Tags  Review + create`
    We can skip all sections now and go to "Review + create"
1. Product details: 
    - note the costs (mine is 0.1100 USD/hr)
    - click the **"Create"** button at the bottom of this screen
 
1. wait. 
    - the screen should say "Deployment in Progress" report any errors or problems 
    - click "Go to Resource" when it's complete

## Exploring the Azure portal 

this portal page lists details about this virtual machine.   

## Connect

<!-- Notes: DSVM does not have a linux desktop.  see https://docs.microsoft.com/en-us/azure/virtual-machines/linux/use-remote-desktop for details on installing linux to allow remote access.  Requires students to install RDP client and get it working?  Is this even feasible?    -->

options to connect to remote linux computer: 

  * ssh , alwayws works, requires Mac terminal or windows or mobaxterm
  * Rstudio Server (must be started)
  * Jupyter Notebooks (must be started)
  * Remote desktop (must be installed on VM, and a client must be installed on laptop)

test connection: 

  * in the left hand menu of the VM resource, find the "connect" section
  * click the "ssh" section if not already selected
  * near the bottom click "test your connection"
  *  

connect with ssh:

  1. open your terminal program
  1. in the portal, find the machine ip address
  1. issue command `ssh azureuser@<ip>`
  
## Download Data

Using standard Linux tools we will download data onto this remote computer

  1. Log-in via ssh if you haven't already
  1. use the following command to download data set
        `git clone https://github.com/fivethirtyeight/data/tree/master/college-majors`
  1. review the files using linux commands
      1. `cd college-majors; ls`
      1. `head grad-students.csv`
  
## Start R studio Server




