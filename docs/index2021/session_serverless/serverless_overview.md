# Introduction to Serverless and Azure

### For [Session 7: Overview of Serverless](../session_serverless/index.md)



![Serverless Graphic from Instana](https://www.instana.com/media/serverless-evolution-1024x455.jpeg)

*Graphic credit: Instana https://www.instana.com/blog/introduction-to-serverless-computing/ * 

The buzzword 'serverless' by those who wove a fabric of cloud systems weaving together VMs, Networks, disks and storage which require significant provisioning and maintance.    Traditional IT is a collection of massive servers with many purposes and features that do it all.   Replicating that infrastructure in the cloud is using the "Infrastrcture as a Service" (IaaS) feature of the cloud.  We have talked before about the disadvantages of that for researchers, and a suggestion to look for ready-made solutions which are "Platform as a Service" (PaaS)

"Serverless" is essentially PaaS because you don't manage and deal with a server, just the functionality that you need for your work but it's a bit deeper and more than that.  

Many problems that "serverless" can be applied to

- short and 'stateless' function execution, where functions can scale at will (Python, Java, C, C# etc)
- event processing, handling huge streams of data in small chunks 
- components of a cloud-based workflow
- web application engines

Main distinction for 'serverless' is that even though in the end of course  your website or function run on a server somewhere that has an operating system installed on it, you don't have to know.   

**Server Process**: 
     provission machine --> install OS --> install software --> add your code, read your data and run --> delete and/or keep it maintained

**Serverlesss Process**: 
     provision resource --> add code --> and run

Both require cloud storage, and both require adapting your code to run in the particular environment, but with serverless you don't need to think about security iissues.   But what if you just wanted to have one step in your work be isolated, and also run only when needed?



Key points about serverless

 - goal is to have aa workflow of components that communicate with each other, but can be indepedently managed
 - a primary communication method is using web api's, aka REST aka 