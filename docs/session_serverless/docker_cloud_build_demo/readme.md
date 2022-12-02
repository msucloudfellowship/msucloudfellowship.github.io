# Example Docker on Azure

This is a minimal example of building and running a docker container using Azure Container Registry and 
Azure Container Instances.  Uses the smallest docker file in the world, which simply adds the NLTK python library 
to an existing JupyterLab server from [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/)

Using an admin password for an Azure container registry is not the most secure solution for the purposes of this tutorial works.   

## requirements
 - azure account
 - updated Azure command line utlities installed (az cli)
 - logged into to Azure using az login
 - an existing resource group
 - Based on and depends on the Jupyter lab stack being available, see https://jupyter-docker-stacks.readthedocs.io/en/latest/
 - Dockerfile in the current directory


## Using this code.  

The shell script code (sh) contains commands that will use Azure to build and run a docker container.   However it is not complete and **you need to edit** for it to work.  Open the script in a text editor and look where to add your own resource group and Azure ID.  

### Run Options: 
 - use your own terminal if the `az` cli is installed
 - use the Microsoft Azure cloud shell if you have set it to use the CLI
 - run the whole program at once (see below)
 - copy and paste sections to examine how they run.  
 
### Run: 

several of the commands take a while to complete, especially the build command.  After editing the script and adding your resource group and ID.  To run in a Mac/Linux terminal, use

```bash
az login
# optionally set the subscription if you have are in multiple
source docker_build_jupyter_on_azure_demo.sh
az_jupyter_create
```

the relevant information will be printed on the screen, and carefully cut out the token from the log output to put into the web browser. 

when you are done with the container, you can remove it and the container registry in the same, or a new terminal using 

```bash
source ./docker_build_jupyter_on_azure_demo.sh
az_jupyter_cleanup
```


written for the [MSU Cloud Computing Fellowship](https://msucloudfellowship.github.io)

