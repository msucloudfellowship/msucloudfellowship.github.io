# Interfacing with Cloud Services

Cloud Services are by design DIY infrastructure and hence require an interface to thes services.  All of the cloud companies use a web interface, so-called REST API.   Knowing the details of REST is not important but it's often the basis for all of the other style of interfaces.    Very few researchers would ever use the REST api directly, instead would use the web interface or even better the command line or programming language interface which achieves the same goal with less work.   


In Azure, everything you could possibly create is called a "resource:" a machine, a data service, a single network address.   The system to work with Azure resources is the "Azure Resource Manager" or ARM and the primary interface for the Resource Manager is their web (REST) api.    You may see references to resources in documentation and that means any web doo-dad. 

A "software developer kit" is simply a collection of utilities, libraries/packages and documentation for a specific language to work with a specific service.  All the cloud vendors have SDKs, and they all have SDKs for Python.    SDK simply means you can create, delete, interact with cloud services from your program. 

## Summary of Cloud Interfaces

Here is a summary of ways to interact with cloud services, with specifics for Azure.  

### Graphical Web Interface

Most people want a graphical user interface, and for azure that's the "Portal" or https://portal.azure.com.  For Google cloud it's the "console" and for AWS it's also called the console.  See below for an introduction to using the portal.   Note that the Azure portal and Google console both have web-based terminals that allow you to use the CLI directly in the web interface.    

### Command Line

For those not familar wiht the command line, see https://www.digitalocean.com/community/tutorials/an-introduction-to-the-linux-terminal for linux and for Windows Powershell see https://programminghistorian.org/en/lessons/intro-to-powershell


The command line interface is a great way to interact with cloud services because it's imperative and all options are specified in a single command.   With the web interface, you may have to hunt through the user interface to find the checkbox for an option, but for command line 

Azure has two command line interfaces:  The "CLI" which is based on Linux and will work in any linux or Mac terminal (or shell script) and the "Powershell" interface which is for Windows Powershell users.   Since Powershell has been ported to Linux and Mac and the Linux Shell  and Azure CLI can also be used on Windows, so both are operating system independent but in practice, Windows users use powershell and everyone else uses the CLI.   Your choice depends on the kinds of other systems you'll be working with.  For example, the MSU HPC uses Linux command shell  but Windows servers and other Windows services like SQLServer work well with Powershell. 



### Python

All cloud vendors have SDKs to work with Python.   After installing the SDK, you import the libraries and issue commands to create resources, then use those cloud resources to do work via client libraries (either Azure libraries or others).   Azure has extensive documentation for using Python: https://docs.microsoft.com/en-us/azure/developer/python/?view=azure-python

Example Azure code to create cloud storage, compared with how you would see the resources in the azure portal, and similar commands using the CLI : https://docs.microsoft.com/en-us/azure/developer/python/azure-sdk-example-storage?tabs=cmd


### Python Notebooks

### R

Unlike th other vendors, Microsoft maintains R packages to in

## using the Azure Web Portal

## References

### AWS

The SDKs for various programming languages: [https://aws.amazon.com/tools/](https://aws.amazon.com/tools/)

AWS CLI: https://aws.amazon.com/cli/


