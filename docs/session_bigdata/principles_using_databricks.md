# DRAFT Using Databricks and References

### Basic function

Spark is a cluster technology that connects to special storage, performs parallel work and reports performance.  It
runs on Azure using a combination of VMs, Storage disks, blob storage and networking.   Spark has commands and tools
to help you parallelize your python, R or Javacode to tackle problems too big for one computer.  

AzureDatabricks is a webservice to allow you create, start, stop, destroy Spark clusters by abstracting all the 
resource creation for spark clusters.   When you create an "Azure Databricks" resource Azure creates the pieces necessary 
to run the webserver and setup the storage system for your data and code, along with all the stuff related to user accounts
based on existing Aure user accounts.   ADB calls this webservice the "workspace" as it's a place to build multiple clusters and run multiple programs.  

You log-in to the ADB web service which has forms to build Spark clusters on demand - you don't have to provision any of the Azure resources.  In fact the resources that ADB creates can't be changed by you manually.  

ADB lets you work with yoru clusters in several ways : submitting your program as a "job" the runs on a spark cluster, or with an interactrive notebook like Python Notebooks or R notebooks.     In addition ADB provides a way you can connect to it via a command line on your computer remotely, rather than forcing you to use it's web interface.  

You can upload data files either via your notebook code, directlh in the ADB web interface, or with the command line.  These
data files are then available to your code that runs on the cluster.  Becasue the Spark cluster uses special form of 
parallel data storage, you can't upload files to it directly from Azure (like you would with other Azure storage)/  however
ADB _does_ allow you to attach/connect blob storage to the cluster directly instead of using the spark data system. 

ADB by itself can not run code.  You use ADB to first create a spark cluster, then the cluster can run your code.  Hence to do some data operations, you must first create a cluster that can then run the code to operate on the data, even if those operations don't really requires a full power of a cluster (the code needs to run _somewhere_.). 


### How tos

Create and use an ADB service: use azure portal (link), then go to the resource in the 
How to upload into databricks: 

1) use the UI (link)
2) in a cluster, use the 

Can I upload files into the DB file system without creating a cluster?  Is there a way to see the files 
on the DB file system easily from outside of the cluster?

I want to use Rstudio and the instructions say to run a python notebook that uploads a shell script
into the file system which seems like a really convoluted way to interact with the file system, or do
any kind of adminstration

why are there _so_ many disks created in the auto-generated resource group

I have participant roles limited to the resource groups I create for them, so they
don't accidentally delete anything that's not theirs.  
   That seems like it will be a problem when they go to try to build a DB and it creates a new RG. 



Job clusters much cheaper
- interactive is default, but much more expensive


old school RDD, had to do all your own 

Dataframes + Catalyst