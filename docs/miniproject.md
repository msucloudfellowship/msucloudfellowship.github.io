# end-of-semeseter mini-project

We ask the fellows to complete a small project using the cloud to summarize and visualize data. 

## Overview

The basic task of this project is analyze data in the cloud: copying data and code to the cloud, and using cloud computing to run a basic script, and save the output to cloud storage.  We provide the data and the code (in R and Python ) with clear description of how to run it.

The goal is to assess whether the structure of this material was sufficient (did we do our jobs?), that you were able to synthesize it, and hence you as a fellow are ready to take on a cloud project.  

The goal is not to determine your ability to run code (which you most like can already do!), use git, use the command line, or to be a systems admin but just to assess what piiece of this small puzzle we may need to reinforce.   All steps should be able to be completed without having to write any code at all, except tp run the program.  We hope this unified exercise helps fill any gaps in practical and potentially practical understanding of how computing in the cloud works.   Or, even better, that it's so easy that it seems like busy work. 

## Process

We are here to help along the way, and happy to answer any an all questions.   The goal is to not present a step by step tutorial but to provide guidelines for how you should approach the problem.   If you have issues it would be very help to us for you to review the course materials to determine if we've provided the information or links to the information to know if we need to augment these materials.  However we will aways answer your questions as they come up. 

If you review this and find it very easy, you want to use something other than a VM to do calculations, or have code and data of your own you'd like to run, that is great!    The goal is to help you accomplish a computation in a way that you may use in your project.   

## Output

We ask that you prepare a short, informal description of the resources you used, how you used them to move data and execute code, and the costs associated with those resources.   In addition any technical challenges, lack of clear documentation,  or any other issues that needed to be overcome to complete this will be helpful to us. 

## Data

The data is a simple CSV file of approximately 450,000 weather observations near the MSU campus.   Details about the data file and it's origin are documented in the code site linked below.   In addition a direct link for downloading the suggested data set will be sent to the fellows in email.   While the data is in the public domain, for each download there is a small cost.  Hence we are not posting the URL on this  public site to prevent bots from repeatedly downloading the file. 

## Code 

The code we suggest you run is available on Github: https://github.com/msucloudfellowship/msu_ccf_miniproject There is a Python and an R version.  The data is not in the github repository, but you should have recieved a link to download it, and there are instructions and code for downloading the data from the source for Lansing or other weather stations. 

## Task Details

We expect you to create the following elements. If you already have some of these cloud resources, of course it's more efficient to re-use those but we want to get a cost element for all aspects, so we recommend creating a new resources (e..g. a new storage account) for this mini project.  

You can use the Azure portal to accomplish many if not not all of these tasks, excpet to run your actual program,

- create cloud storage (account, etc)
- copy data into storage
- create and start a Virtual Machine (VM) that can run this code.   The instructions refer to the Azure data science virtual machine, which we discussed in the session "how to cloud" . You may also use container services (e.g. Azure Container Instance) to run this code if you like. 
  - hint: consider using tags to uniquely identify resources you are creating for this project to easily identify all resources used for 1) cost analysis 2) deleting
- connect and log-in to the VM, and get the scripts into the machine, install software as needed
- copy the data from storage to the virtual machine disk, 
   - by attaching the storage to the compute service and access via that connect
   - or otherwise copy the data (hint: the DSVM comes with the Azure storage explorer installed)
- run script while pointing to the data file location
    - this will output images of plots (PDF or PNG formatted)
- save output files to cloud storage
- turn off delete resources related to the VM
- determine total costs. See the section on costs in the [cloud organization](session_organization) session. 
    - if you commplete this in less than a day, the costs for these resources will not be immediately visible in the Azure cost analysis tool.  Potentially wait until next day to view the costs in the Azure portal. 
    - This analysis was very small, so the costs will be very very small. 
    - uses the outputs from the costs analysis to add a list of resources and costs to your report.
    - As mentioned above, if you use unique tags when creating the virtual machine it will be easier to identify costs specific to this activity

## Due dates

The due date will be discussed in the email but they are flexible.   

    
