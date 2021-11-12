# Linux Containers & the Cloud

#### For [Session 7: Overview of Serverless](../session_serverless/index.md)

![containers go everywhere](img/container_loading_on_truck.png.jpg)

*The container metaphor relfects the nature of a standardized box can be carried on ships, trains, and trucks at different scales*

## Introduction

Like Virtual Machines, containers are a means to abstract a running system so that we can bundle muliple "machines" on larger equipment.  However containers have several advantages to virtual machines which is why Google invested in their invention 15 yrs ago.   

- you can use code to define exactly what will go into a container, making it reproducible.  You can to this with VMs but it's more difficult and/or dependent on the cloud company (e.g an AWS linux VM is different from an Azure Linux VM)/   
- you can run a container on any vendor or your laptop or even the HPC
- because you define what is installed in a container, the configuration of complex software is easier and portable.   In addition you can find container solutions from others, or from the software producers themselves.  

**Notes**

Containers often are for running web applications, and great for running complex web systems, but they can be used for other types of servers, or for batch computing as well.  Most of the examples may involve running a website. 

"Docker" is the company that popularized container technology and made it easy to share ideas, but they are only one of several systems that work with the Linux Container specification.    Docker is a company, a technology/method, software you install on your computer, and a place to host shared containers (a repository or hub)  So you may hear about "Docker containers" but this is a brand name (like "Kleenex").  On the HPC we use [Singularity](https://wiki.hpcc.msu.edu/display/ITH/Singularity%3A+I.+Introduction).  However to get started I suggest using Docker, installing docker desktop, and following docker tutorials.   Azure is compatible with docker (that's what we use) 

You can use Docker on your desktop, and launch containers and use the software in a container, which is like running a website right on your laptop.   Most likely no one else can access it, but it's great for development and testing.    Azure has many docker-like features, and you can build and use containers with Azure *without* installing Docker on your computer, but I recommend working from your computer first to ensure it works

The main code file that docker looks for is named "Dockerfile" with no extension, and so we say we are using a 'dockerfile' to build a container however this is just the default and the file name can be anything when using the command line

You will hear alot about a technology platform called "Kubernetes" which was invented (at Google) to be able to manage dozens,hundreds or thousands of containers working together to support large web applications (like Google but also Walmart.com).  This is called "container orchestration."   You don't need Kubernetes to run single or even a couple of containers.   There are other solutions, or you can connect them yourself.   Using Kubernetes can be an entire career but the promise is easy building an elastic cluster for HPC-style computing.   

The "serverless" infrastructure of Azure is built on containers.   Containers are the heart of how the cloud works, and provide a way for developers of complex research software to provide a mechanism for users to launch their software quickly.  Many bioinformatics or genomics packages now include

Containers are complex and especially how they work but if you can use them in practice you don't need to know the details.  


## Reading

[An Introduction to Containers](https://www.suse.com/c/rancher_blog/an-introduction-to-containers/) from a company called "Rancher" which sells software manage containers

Chapter 6: [Using and Managing Containers](https://s3.us-east-2.amazonaws.com/a-book/containers.html) from our textbook "[Cloud Computing for Science and Engineering](https://cloud4scieng.org/)" 

[Docker Overview](https://docs.docker.com/get-started/overview/)

[Azure Container Service Overview](https://azure.microsoft.com/en-us/services/container-instances/#overview)

## Activity

- [Quickstart: Deploy a container instance in Azure using the Azure portal](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-quickstart-portal) : copy a simple web application into a container and run it on Azure

- [Docker Orientation and setup](https://docs.docker.com/get-started/)

- For Python Users: [How to Run Jupyter Notebook on Docker](https://towardsdatascience.com/how-to-run-jupyter-notebook-on-docker-7c9748ed209f)

- *optional for shell scripters and command line users*: complete this [shell script that launches an Rstudio session on azure container instance](container_scripts/rstudio_container_script.md)







