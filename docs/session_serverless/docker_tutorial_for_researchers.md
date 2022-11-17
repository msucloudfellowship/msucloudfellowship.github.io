# Docker Tutorial for Researchers featuring Jupyter Lab: Part 1

**for the 2022 MSU Cloud Computing Fellowship Session 6: [Serverless, Containers, and FaaS](index.md)**

## Introduction

This is a walkthrough for using Docker containers on your desktop and in the cloud using Microsoft Azure.  

See the main page for this session and also the [introduction to containers](docs/session_serverless/linux_containers_and_the_cloud.md) along with other links for background on 

### requirements to follow along
 - azure account
 - updated Azure command line utlities installed (az cli)
 - logged into to Azure using `az login`
 - examples depend on the Jupyter lab stack being available in Dockerhub (valid November 2022)

Notes: 

Docker is not the only system for using containers, but it's the most popular and I won't cover the others.  I mention this because the main documentation for the container we will be using (Jupyter stack) describes using 'Podman' but we will stick with Docker for now.   

A reminder that Docker is a company that hosts a service to upload/download container images, and the name of the softwae ('docker') that can run containers and the name of a file ('Dockerfile' ) to create containers.    

Windows users: Docker was created for Linux but Microsoft has worked hard to make it viable for Windows users as well.   The primary examples in this tutorial for for the command line will be for Mac/Linux, but there should be an equivalant option for Windows users.   One way to make your windows computer more like Linux is to install the Windows Subsystem for Linux (WSL) which would provide you with a Terminal program that runs the "bash" shell
There are three parts to this tutorial: 

1. working with containers on your computer (this document)
2. Launching containers on Azure ( in development )
3. Creating your own containers ( in development )

Let's get started

## Part 1. Using Docker on your computer

### step 1: install Docker 

Docker offers many products, some of which are underlying tools to use docker.   You minmimally need the "Docker Engine" to run and manage docker containers via the command line (only).   However they also offer "Docker Desktop": a GUI to work with images and containers, connect and download from Dockerhub, set preferences, and includes all the other tools they make (Docker Compose, etc).   

Hence we will install Docker Desktop to get everything but this tutorial will primarily work with Docker via command line interface.   Most software that is based on docker will have instructions for running it using the command line.  

Install docker desktop using instructions here: https://docs.docker.com/desktop/

Windows users: Microsoft has provided some good information on their site for using docker with the WSL, but you muse install that first : https://learn.microsoft.com/en-us/windows/wsl/install then see  https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers


Note that Docker Desktop works differently on Mac and Windows.  I recommend that you take some time to review the introduction from Docker desktop.  Minimally, we want to open the "dashboard" and to that you find the docker icon ![docker whale](https://docs.docker.com/assets/images/whale-x.svg) in the system tray on windows, and menu bar on Mac, and select "dashboard" .  This may be helpful: https://docs.docker.com/desktop/use-desktop/#the-docker-menu 

## Step 2. Find/Select an image to run from the Internet

Many programs and servers have a "dockerized" version of software someone has prepared, often linked on the software  web page or in a a README file, and you could use almost anything with this tutorial.  However for this tutorial we'll be running JupyterLab to use python notebooks on our laptop.    

The Jupyter Stacks project offers many different containers with different amounts of software installed (or 'stacked') along with Jupyter lab.  The important section is  https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#core-stacks describing each of their offerings.    

I will install "datascience-notebook"  using instructions similar but not exactly the same as theirs.    R users could follow along using instructions from [the "Rocker" project](https://rocker-project.org/)

Containers when published are minimally named as follows (this is the URI for the container):

`registryaddress/author/imagename:tag`

 - Author can be a person or an organization
 - Imagename is what the author named the container image
 - tag is like a version, but is not limited to version (but is limited in size).   Example tags could be 'v3' and the latest version is 'latest' by convention.   
 - Registry address is usually not needed because we are always using Dockerhuib.   However The full name of container we pull from Dockerhub (99% are hosted on Dockerhub) includes the docker address, or 

`docker.io/author/imagename:tag`   but the docker software automatically puts docker.io when needed


### Step 3. Download and run the image as a container using the command line

In your terminal or cmd.exe program, use this command: 

```bash
 docker run -p 8888:8888  --name jupyter-datascience jupyter/datascience-notebook:latest
```

You can do somethign similar in the desktop dashboard, but only if you log-in to a repository like DockerHub.  So for this tutorial we'll be using the command line.   See https://docs.docker.com/desktop/use-desktop/images/ for more on the desktop interface for using Images.  

#### Command breakdown for "docker run":

 - **docker** - main program to work with images/containers
 - **run** - command to docker.  others include 'pull' to get image. this command will automatically pull the image from dockerhub first if you don't have it on your computer 
 - **-p = port** if the image runs a server, all servers need a 'port' to listen on, and you have to tell docker which port on your own computer you want to connect to the container. Note we could have used any port ( > 1024) but using the same port makes it easy to remember.  See this doc for descriptions of ports](https://www.cloudflare.com/learning/network-layer/what-is-a-computer-port/).  The important thing is anything over >1024 is fair game to use, but software tends to have a port they use by convention.   Jupyter lab uses 8888.   Rstudio uses 8787. and Postgresql uses 5432,  just because.
 - **name** this is optional and you can use whatever name you need to help organize your containers.  If you don't provide it, Docker will assign a random name.  when you have several images/containers running for a complex system or as you develop new containers, assigning names willhelp you keep track.     


If all goes well you will see download progress, and then part of the log or command output: 

```bash
[I 2022-11-11 04:59:32.704 ServerApp] Jupyter Server 1.23.0 is running at:
[I 2022-11-11 04:59:32.704 ServerApp] http://801ec4713575:8888/lab?token=57fb181bc074c193095db3df8c245521d3acb83530078d73
[I 2022-11-11 04:59:32.705 ServerApp]  or http://127.0.0.1:8888/lab?token=57fb181bc074c193095db3df8c245521d3acb83530078d73
[I 2022-11-11 04:59:32.705 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2022-11-11 04:59:32.707 ServerApp]

    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-6-open.html
    Or copy and paste one of these URLs:
        http://801ec4713575:8888/lab?token=57fb181bc074c193095db3df8c245521d3acb83530078d73
     or http://127.0.0.1:8888/lab?token=57fb181bc074c193095db3df8c245521d3acb83530078d73
```

When Jupyter Lab runs, it outputs messages, and Docker is simply forwarding those message to the "log" of output, which when you run on your computer shows up in your terminal.    You can also view the log in the Docker desktop user interface. 

To open Jupyter lab, use the last URl in the list.  

Note about ports:  These Jupyter lab docker images are set to run on port 8888 and will always report that.  However, if you use a different port in the command, then that is the one  you want to use.   For exmaple the command 
` docker run -p 9999:8888 jupyter/datascience-notebook:latest` the URL would be `http://127.0.0.1:9999/... etc` but the log message will still say 88888 becuase that's the port used by the container internally - it doesn't know about the external port map.    moral is to try to use the same port to reduce confusion.  


If it worked and you can log in, you can create a notebook, do some python (or R or Julia) and save the notebook.  Great!  But when yuo save, where does it go?  Right now, everything is instde  But that's all in the container.   If you shut down the container, that is all lost, because internal container storage is ephemeral.   

In the same terminal you ran the command, use Ctrl+C to cancel it and stop running.   You can also use the Docker desktop GUI to start and stop containers.  

Note if you run this again, you'll get the error

```docker: Error response from daemon: Conflict. The container name "jupyter-datascience" is already in use by container "...". You have to remove (or rename) that container to be able to reuse that name.
```

#### Working with Containers 

After creating a container and stoppping it, you can do a copule things: re-start the container, delete it, start a second instance of the image in a new container, list all your containers.  Note these containers are distinct from the images from which they are made.   

**Using the docker desktop user interface**

You can accomplish all of the activities below using the "Dashboard" section of the Docker desktop user interface, which lists all of the containers on your system along with any images you've downloaded.   See https://docs.docker.com/desktop/use-desktop/ for an introduction.  

**Using docker command line to manage containers**

1. re-run the container - it's still good!  It's just paused.  

`docker container restart jupyter-datascience`

Note you use the name you assigned the container when you ran it, not the name of the "image"

2. delete the container 

`docker container rm jupyter-datascience`

Tou can run now a new one (perhaps to alter the port, or other options).  The syntax is based on the Linux 'rm' command 

3. start a different container from the same image

`docker run -p 8889:8888  --name jupyter-datascience2  jupyter/datascience-notebook:latest`

In this example I used a different port number, which would allow you to run _both_ containers at the same.  I don't think, for this image, there is a reason to do that, but it's possible.  Note that this will taks 
`
4. An many others...

https://docs.docker.com/engine/reference/commandline/container/

For example list all the containers on the system `docker container ls -a`


### Step 4. Connecting docker to your local files

Containers are great because they are unchanging environments you can run repeatedly.  They are not great becuase they are unchanging environments and anything you 'save' or change is lost when you shut down or delete the container.   Computing is not very valuable unless you can save your output.   Docker containers are walled off from your computer unless you explicitly connect a folder from your disk to a folder location in the container.    There are two ways to do this but we are using "volumes" ( see docker Volumne documentation for details.  

The goal is to take a folder on your computer and tell Docker to make it look like it's a sub folder somewhere in the container.  The folder on your computer is up to you, but the location in the docker image is very dependent on the structure and nature of the container.    Some have strict requirments.   

Steps to use volumes on your computer 

1. create the folder
1. use Docker desktop to give permission to use the folder
1. run the container with the command to 'mount' the folder into the Linux container

**Volumes step 1. Create the folder**
let's create a folder on your comptuer.  You can use wahatever you want, and this is just an example. 

Let's create folder called "notebooks" right in your home directory.   If you are unfamiliar with the command line there are some instructions for using the Docker Desktop below.  

On Mac, the folder would be in your home directory,  or /Users/<username>/notebooks.  In Mac/Linux terminal the short cut for home directory is `$HOME` so the command would be

mkdir $HOME/notebooks

On Windows the shortcut is `%HOMEPATH%` so the path to the notebooks folder is %HOMEPATH%/notebooks (see https://www.thewindowsclub.com/system-user-environment-variables-windows for what an enviroment variable is in Windows).  

**Volumes step 2. Give Permission to use the folder**

There is a way to edit the configuration file for Docker to allow access to folders on your computer, but here we'll use the Docker Desktop GUI app.  

1. Open the Docker Desktop, and go to preferences.  See the bas

The Jupyter stack containers have a long discussion on this in the documentation, but in short, there is a special user account inside the container, and to see notebooks yuo have to create a subfolder in that account's home directory.  The user is named "jovyan" and so the home directory inside the container is "/home/jovyan" and that's where the notebooks are looked for. 


**Volumes step 3.  Add volume when running the container**

To add a volume to the Jupyter stack containers, try this command


```bash

docker run -p 8888:8888 -v "enter path to notebooks here":/home/jovyan/notebooks  jupyter/datascience-notebook:latest
```

If you created the 'notebooks' folder under Document, the path on a Mac will look something like  `$HOME/Documents/notebooks` so the command would be 

```bash

docker run -p 8888:8888 -v $HOME/Documents/notebooks:/home/jovyan/notebooks  jupyter/datascience-notebook:latest
```

 On Windows I don't know exactly what this will look like but you could try using variable `%HOMEPATH%/Documents/notebooks` in the command.   


```bash
# I don't have windows so this is a guess
docker run -p 8888:8888 -v %HOMEPATH%/Documents/notebooks:/home/jovyan/notebooks  jupyter/datascience-notebook:latest

```

But what about the other size of the ":" ?  I know from the  Jupyter Stacks documentation that this image uses the folder `/home/jovyan/` so this command maps the folder 'notebooks' on my computer to 'notebooks' to inside the the container.     

Now when you open the browser and copy/paste the URL for the new notebook server you've started, you'll see the "notebooks" folder on the left side, and any notebook you save there can be found on your computer.    

note that there are aother potentially more sophisticated ways of using Volumes than this, but this works for us!   see the docker documenttaion for details.  


# Part 2: using Azure to run containers

Azure has several services for running containers or based on containers.  For this example we will work with [Azure Container Instances](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-overview).  (this link is the same as on the main page of the serverless session)

If you have the [Azure command line utility installed] on your computer,  and you know the name of your resource group ( for 2022-23 fellows we use the pattern "ccf22_<netid>".    You can run the Jupyter Lab container with just one command line: 

```bash
az container create --resource-group "put your resource group name here" --name jupyterlab --image docker.io/jupyter/datascience-notebook:latest --dns-name-label " put a unique name here" --ports 8888
```

Note if you don't want to install the Azure command line (which is not small!) then you can use the [Azure Cloud Shell](https://learn.microsoft.com/en-us/azure/cloud-shell/overview)

* "resource-group" = your group, which you can find with the command `az group list`

* "name" is the name of the container that could be anything, in the example below I use "jupyterlab" but could also be named for the project you are working on.  It may be useful to add more information about how you ser using it , say "jupyterlab-testing" or add your netid to it.  

*  "dns-name-label" is used to create the URL that you will go to so it has to be unique.  One option is to use your NetID as part of the name, e.g. "jupyterlab-sparty"

* "image" this is the URL of the image we need to tell Azure which container "registry" to look to, and for Docker that's `docker.io` The image I used in the command below is the Jupyter stacks data science image, but you could use any image that has a web server, for example 


### About this command

Just like the command on your own computer, this maps port 8888 used by the Jupyter server to the same number on the host.   

This once creates the Azure container instance resource in your group,  uploads and configures the docker image, and starts the container.  

the output is a long text in JSON format that has some crucial information in it.   You can always get this information again with the 'show' commands like this

`az container show -g $RG --name jupyterlab`

but also from the Azure portal.   T\he information you need in the output is this: 

```JSON
"ipAddress": {
    "dnsNameLabel": "jupyterlab-billspat",
    "fqdn": "jupyterlab-billspat.northcentralus.azurecontainer.io",
    "ip": null,
    "ports": [
      {
        "port": 8888,
        "protocol": "TCP"
      }
    ],
    "type": "Public"
  },
```

and the FQDN is the fully qualified domain name or web address where the server is running.  Note it starts with the 'dns-name-label' parameter you entered above.   

Put the "FQDN" in a browser, and add `:8888`    So for me, the URL is  "http://jupyterlab-billspat.northcentralus.azurecontainer.io:8888"  - but that's not enough!   You still need the security token!  

The challenge with getting the token is that when running on azure (unlike docker on your computer) you don't see the logs of the running container, and the token is output in the logs.   There are two ways (at least) to get it: 

#### getting the docker container logs via command line 

`az container logs --resource-group "your resource group name here" --name "the --name option you used above here"`

lists all the logs, but we just want the token.  Here is what I run on my mac to filter the logs using `grep` 

`az container logs --resource-group "ccf22_billspat" --name "jupyterlab-test" | grep token`


####  getting the docker container logs using the Azure portal: 

- open portal.azure.com, go to your Resource Group if it's not already open
- find the new container instance in the list of resources, then open it up.   
- inside that screen, look for the "containers" section on the left side.  Then select the container (mine isa called "jupyterlab-test", select "logs", look in the looks for the token and copy and paste it

### Using Cloud Storage with Azure Container instances.  

Recall from the Storage session, when you create an Azure storage container, inside that you can created different types of storage, primarily "blob" or "files."   Files are modeled on network storage, hence easier to connect to running systems directly.   

If you have an Azure File share in one of your Azure Storage containers, you can connect to it 

The following doc from Azure describes how to use the Azure CLI and Bash to get the necessary information about file share and connect it to a container instance. 
https://learn.microsoft.com/en-us/azure/container-instances/container-instances-volume-azure-files

Here is a shortened version based on the Portal

1. Create a File share if you don't one already: 

 - Create or use your existing storage account in the portal 
 - Using the Portal open the storage account resource, then go to "File shares" on the left side and create a new file share using the "[+ File share]" button at the top.  It can be named anything you like.   If performance is not crucial, select "hot" tier storage.  

2. Get some security information from the portal  

STORAGE_ACCOUNT_NAME: the main name of the storage accoutn in which you created the File share
SHARE_NAME the name of the file share you  just created (or are using)
STORAGE_KEY this takes the most work to find. 
  - in the Portal, open the storage account main page (not the file share, but the storage account) 
  - on the left side, find "Access Keys"
  - this will list the storage account name, and 2 keys
  - each key list both the key by itself, and a "connection string" useful for other services
  - you can use either key, it doesn't matter.  Use the "show" button to show the key so you can copy/paste it

3. Run the container as before, but now with file share: 

Note in the command below, I'm using the "line continuation" characther "\" that works for Bash shell and maybe Powershell.  If you are using Windows you may have to adjust the syntax

In the command below, replace the 

```bash
az container create --resource-group "put your resource group name here" \
 --name jupyterlab --image docker.io/jupyter/datascience-notebook:latest \
 --dns-name-label " put a unique name here" --ports 8888 \
 --azure-file-volume-account-name STORAGE_ACCOUNT_NAME \
 --azure-file-volume-share-name SHARE_NAME \
 --azure-file-volume-account-key STORAGE_KEY \
 --azure-file-volume-mount-path /home/jovyan/notebooks
```

For example : 

```bash
az container create --resource-group "ccf22_billspat" \
 --name jupyterlab-test --image docker.io/jupyter/datascience-notebook:latest \
 --dns-name-label "jupyterlab-test" --ports 8888 \
 --azure-file-volume-account-name stbillspatccf22 \

 --azure-file-volume-share-name ccf22billspat \
 --azure-file-volume-account-key dve+w+fw8XUSLE91pKO2i6.....etc....KV49ZHYEY07qsvBBpnPV9+AStjQ7vFg== \
 --azure-file-volume-mount-path /home/jovyan/notebooks
```

The web address for the Juypter lab server, after looking up the security Token using the methods describe above is: 

`jupyterlab-test.northcentralus.azurecontainer.io:8888/lab?token=7e0ef407a591f10cfb358850c25cdc6529742309366382f0`

note that if you use Azure Blob storage, you can read/write to it using Python commands without having to connect when you build the container.  You need the connection string and to have the Azure python packages installed (see below for inforemation on how to modify the datascience-notebook image to install more python packages)

**Creating containers using the Azure Portal**

The portal has nice forms for creating container instances, but you will still need the three storage account information as described above.  

### Managing Containers in Azure

If you stop teh instance you are no longer charged.  You can start/stop from the command line or from the portal

```bash
az container stop --resource-group ccf22_billspat --name jupyterlab-test
# later...
az container start --resource-group ccf22_billspat --name jupyterlab-test
# this does take a while, but may be easier than recreating it.  
```

However to keep your Resource group tidy, if you are finished with a container instannce for a while you should delete it. 

`az container start --resource-group ccf22_billspat --name jupyterlab-test`

### Azure Container Instance Alternate Method

There are several ways to do this - of course there are, this is Microsoft!   

Microsoft worked with the Docker company to get commands built into the `docker` utility to be able to run docker files via your laptop.    In Docker-world, a 'context' is how the container is run, which could be different folders on  your laptop, some kind of fancy docker server, or a cloud service. 

The following are pretty clear instructions for using the Docker 'context' for connection to Azure container instance (ACI) and when you `docker run` the container will load on Azure instead of your laptop.  It's not clear to me exactly which is a better method, however with this method you get all the options available to you via the docker run command, except mounting a volume from your laptop of course.  

 
https://devblogs.microsoft.com/devops/publishing-azure-container-instances-from-docker-cli/


### Yet another method for Docker Containers from Microsoft : Visual Studio Code

If you are a Visual Studio Code user, there is a Docker plugin for editing Dockerfiles and running them on Azure : https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker

I have not tested this but if it may be useful for debugging a complex Dockerfile. 

## Part III.  DIY! 

While you may find a ready made Docker image that has all you need, chances are you'll need to modify it for your own work, and that means making your own images.   

1. Select a Base Image.  We always start with an exissting image.  Could be a very basic version of Linux that we install everything into, or an existing full image that we just add a little to. 
1. Write a Dockerfile : instructions for adding things to the base image (install software, configuration, copying code or data)
1. Build: from the Dockerfile create an image.  
    - on your own computer using the Docker software
    - on a remote repository, like Azure which lets you build on their system
1. Option: upload to a remote repository to be able to pull the image from other places
1. Run: run to create a container from the image
    - the image you just built on your computer, or
    - from the remote repository you just uploaed to (see optional step above) (e.g pull from remote and run)


There is documentation from Docker about what does into a dockerfile, but I find that confusing as they talk about each command, but not how the commands go together.  There are many tutorials for building Dockerfiles to run websites, but not many (if any ) for researchers!  

We've been using Docker images from Jupyter-Stacks.  Here is their example Dockerfile that installs python packages on to their base image: https://github.com/jupyter/docker-stacks/blob/main/scipy-notebook/Dockerfile    This is a bit complex example but it has many of the ingredients of a standard Dockerfile. 

Main sections: 

 - **FROM** always start with a base container.  They 
 - **ARGS** set variables to re-use later in the file.  This makes it easy to change in just one place
 - **RUN** run a linux command in the base container to install something, or set configuration.  Note that most of these try to bundle as many commands as possible into on `RUN` to save space, and hence use the "Line continuation" character to make the command readable.  In the linux shell is usually the back slash or `\`  - when you see that it means continue on the next line for this command.  You will also see `&&` operator which says keep going and run the next command.   These two things allow for very very long commands to run at once (and make the container smaller)
 - **COPY** copy something from your computer into the container : data, code, configuration files, etc

This example uses the example Notebook file you downloaded for Part 1 above, but let's download it again.  

The datascience Jupyter is great, but what if you want to do Natural Language analysis?  We need the [NLTK] package for that, along with the data file for stop words.   Let's create new container that starts with the Jupyter Stacks data science image, and adds those things.   

```dockerfile
FROM jupyter/datascience-notebook:latest
RUN  pip install nltk && python -c 'from nltk import download; download("stopwords")'
```

To build a new image called "jupyter_nltk", save this as a file called "Dockerfile" in a folder by itself and run 

```bash
cd "folder where yuor docker file is"
docker build -t jupyter_nltk:latest -f Dockerfile .
```


Note the command has a period / dot at the end and that's required if the docker file is in the directory from which your run the command

To run this new container, use this command.  Notice that since this Image is on your 

let's say you also wanted to copy a notebook file called "example.ipynb" from the same directoery that the docker  into this container for demonstration.   You could do this: 

```dockerfile
FROM jupyter/datascience-notebook:latest
RUN  pip install nltk && python -c 'from nltk import download; download("stopwords")'
COPY example.ipynb $HOME
```


### Part III Bonus:DIY containers in Azure

This is the culmination of all of knowledge above, and actually what researchers most likely need to do:  run a container that they have created in the cloud 

The key concept here is a container registry, which contains "repositories" which are history and versions of container images.  A registry is a web application to build and store Docker images.   Dockerhub is the most widely used container repository and you could use that, but with Azure you can make your own private registry. 

Here are instructions for using Dockerhub: https://www.docker.com/blog/how-to-build-and-test-your-docker-images-in-the-cloud-with-docker-hub/ . Dockerhub is a great option if you want to share your images with others (at no cost to you!).  However We will be using Azure since this 

A note about terminology:   A "registry" is a service that can hold many images.  Each image has versions (e.g. tags, latest, v1, v2, v2022, etc), and so this is called a "repository"

you create your own registry/repository that is private just to you (and or your lab or workgroup).   There is a fee for this but it's not much.   The advantage to Azure Container registries is you can keep them private, and you can create the repository and build images with the `az` comnmand line (or the protal as usual)


see https://learn.microsoft.com/en-us/cli/azure/acr?view=azure-cli-latest about the ACR service.  

Microsoft also has a tutorial for creating an Azure Container Registry using a container image from their own public registry https://learn.microsoft.com/en-us/azure/container-registry/container-registry-quickstart-task-cli that is pretty good.  However the steps below build upon the Dockerfile created above. 

**1. Create a registry to hold your images**

Create an ACR (azure container repository)/ with the command line (replace ACR name and resource group name to match yours ): 

`az acr create -n <UNIQUEREGISTRYNAME> -g RESOURCEGROUPNAME --sku Standard`

**2. then use that ACR to build the Docker image from your local Dockerfile.**   

First, use `cd` to change to the directory with your dockerfile in it with `cd /path/to/my/Docker/folder`

Assuming there is a Dockerfile in the currenct directory (e.g. if your terminal is in the same folder as the Dockerfile above)

`az acr build -t jupyter-nltk:latest --file Dockerfile --registry UNIQUEREGISTRYNAME .`

Command ends with a single "dot" indicating we are using the Dockerfile that is present in this folder.  

**3. Run the container on ACI from the ACR**

Once built, you can create containers from this image.   By default any Container registry you created in Azure is private (unlike the public Dockerhub).   So when you want to use image that's hosted in a private Azure container registry like the one created above, you must supply credentials to access the registry.

get the  full name of the container registry login server using the command line (or the Portal):

`az acr show --name <UNIQUEREGISTRYNAME> --query loginServer`


(this does not ahve storage account mounted):

az container create --resource-group "ccf22_billspat" \
 --name jupyterlab-nltk --image jupyterlab-nltk:latest \
 --dns-name-label "jupyterlab-nltk" --ports 8888 


You can find the web address by visiting the portal, using `az container show` as described above, and you'll also need to the token from the logs, which is also described. 

I put a collection of code  to combine the steps for this online: https://gist.github.com/psbills/5d42a55d53f0403ba5770b876dd74a3d

This should work on Mac, Linux, and the Azure Cloud shell.  (Not tested on Windows)

