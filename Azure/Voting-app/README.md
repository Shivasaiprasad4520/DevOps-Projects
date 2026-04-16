# open the azure devops -> select repo => click on the import then paste the github link
__

https://github.com/dockersamples/example-voting-app.git

--
<img width="1038" height="717" alt="image" src="https://github.com/user-attachments/assets/4e5759bc-d2da-4a4d-a831-c2a5b9e20b45" />
__

in brunch set a main brunch  as primary
--
<img width="1428" height="770" alt="image" src="https://github.com/user-attachments/assets/33d18f54-2ea5-4760-871d-cd7af5780aad" />

__
Create a resource group 
--
create a container registry using resources group

<img width="836" height="714" alt="image" src="https://github.com/user-attachments/assets/5955105c-71df-4714-99b5-a30e01c54784" />

--
after creating registry go through pipeline 
click on pipeline => create pipeline => azure repos => cicd => docker (Build and push an image to Azure Container Registry) click on it => contiue

=> validate and configure

<img width="1440" height="770" alt="image" src="https://github.com/user-attachments/assets/a2573b77-6aae-4164-8507-8c2311154d99" />

add this in pipeline 
``
trigger:
 paths:
   include:
     - result/*
     ``
remove existing agent and create a new agent to the pipeline

``
pool:
 name: 'azureagent`
 ``
 create build and push stage different
 click on settings adjust commands the task upon our requirements =>click on add button it automatically changes into your requirements

 <img width="1421" height="773" alt="image" src="https://github.com/user-attachments/assets/6ac6a6d3-6068-4334-a611-00fa37c9bb6f" />
 

 
 
