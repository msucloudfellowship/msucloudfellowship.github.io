# Introduction to Serverless Functions

**For [Session 6: Overview of Serverless](../session_serverless/index.md)**

![Serverless Graphic from Instana](https://www.instana.com/media/serverless-evolution-1024x455.jpeg)

*Graphic credit: Instana https://www.instana.com/blog/introduction-to-serverless-computing/ * 

### Intro
The buzzword 'serverless' by those who wove a fabric of cloud systems weaving together VMs, Networks, disks and storage which require significant provisioning and maintance.    Traditional IT is a collection of massive servers with many purposes and features that do it all.   Replicating that infrastructure in the cloud is using the "Infrastrcture as a Service" (IaaS) feature of the cloud.  We have talked before about the disadvantages of that for researchers, and a suggestion to look for ready-made solutions which are "Platform as a Service" (PaaS)

"Serverless" is essentially PaaS because you don't manage and deal with a server, just the functionality that you need for your work but it's a bit deeper and more than that.  

### Many problems that "serverless" functions can be applied to

- short focused function execution, 
- many short functions triggered by external event (validate credit card)
- simplifying a main application into smaller functional units
- event processing, handling huge streams of data in small chunks 
- components of a cloud-based workflow

### how to start a serverless function?

- if using http, use web api to send data via URL  http://getweather.myfunction.azure?zipcode=48824
- can listen for when a file is saved to a blob container or files folder
- other Azure events, database, etc

### Provisioning and Running code comparision

**VM Server**: 

```
provision resources (VM, network etc) --> install OS --> install software --> add code -->
give permission to read storage --> write to storage

upload inputs --> start run --> outputs saved to disk or storage
```

other tasks: update operating system and software, 

**Serverlesss Function Process**: 

```
provision resource (app service) --> grant permission to read storage --> publish code and config

run on trigger --> inputs from binding --> outputs to binding
```

Both run on a server, but or serverless Azure maintains the server - you don't even really care what it is.  Both require cloud storage, and both require adapting your code to run in the particular environment, but with serverless you don't need to think about security iissues.   But what if you just wanted to have one step in your work be isolated, and also run only when needed?

### Example function 

https://github.com/bsab/azure-function-python-blob