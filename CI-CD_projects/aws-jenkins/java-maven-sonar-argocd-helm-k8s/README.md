# "Jenkins End to End CICD Implementation"

# Jenkins Pipeline for Java based application using Maven, SonarQube, Argo CD, Helm and Kubernetes

![Screenshot 2023-03-28 at 9 38 09 PM](https://user-images.githubusercontent.com/43399466/228301952-abc02ca2-9942-4a67-8293-f76647b6f9d8.png)


## Spring Boot based Java web application
 
This is a simple Sprint Boot based Java application that can be built using Maven. Sprint Boot dependencies are handled using the pom.xml 

at the root directory of the repository.

This is a MVC architecture based application where controller returns a page with title and message attributes to the view.

## Step1:- Creating a EC2 instances with terroform using ubuntu OS image

   allow inbound rule to access
   
## Step2:- Execute the application locally and access it using your browser 

Checkout the repo and move to the directory

```
git clone https://github.com/iam-veeramalla/Jenkins-Zero-To-Hero/java-maven-sonar-argocd-helm-k8s/sprint-boot-app

cd java-maven-sonar-argocd-helm-k8s/sprint-boot-app
```

Execute the Maven targets to generate the artifacts

```
mvn clean package
```

The above maven target stroes the artifacts to the `target` directory. You can either execute the artifact on your local machine
(or) run it as a Docker container.

** Note: To avoid issues with local setup, Java versions and other dependencies, I would recommend the docker way. **


### Step3:- Execute locally (Java 17 needed) and access the application on http://localhost:8080

```
java -jar target/spring-boot-web.jar
```

### Step4:- The Docker way

Build the Docker Image

```
docker build -t ultimate-cicd-pipeline:v1 .
```

```
docker run -d -p 8010:8080 -t ultimate-cicd-pipeline:v1
```
### step5:- login to the ec2 server with pem file using terminal
```
ssh -i /User/tarun/Downloads/ultimate-cicd.pem ubuntu@34.233.124.25
```
### step6:- install java and verify java version then install jenkins also 
```
sudo apt update

sude apt install openjdk-17-jre
```
```
java -version
```
```
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins
```

**Note: ** By default, Jenkins will not be accessible to the external world due to the inbound traffic restriction by AWS. Open port 8080 in the inbound traffic rules as show below.

- EC2 > Instances > Click on <Instance-ID>

- In the bottom tabs -> Click on Security

- Security groups

- Add inbound traffic rules as shown in the image (you can just allow TCP 8080 as well, in my case, I allowed `All traffic`).

<img width="1187" alt="Screenshot 2023-02-01 at 12 42 01 PM" src="https://user-images.githubusercontent.com/43399466/215975712-2fc569cb-9d76-49b4-9345-d8b62187aa22.png">


### Login to Jenkins using the below URL:

http://<ec2-instance-public-ip-address>:8080    [You can get the ec2-instance-public-ip-address from your AWS EC2 console page]

Note: If you are not interested in allowing `All Traffic` to your EC2 instance
      1. Delete the inbound traffic rule for your instance
      2. Edit the inbound traffic rule to only allow custom TCP port `8080`
  
After you login to Jenkins, 
      - Run the command to copy the Jenkins Admin Password - `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`
      - Enter the Administrator password
      
<img width="1291" alt="Screenshot 2023-02-01 at 10 56 25 AM" src="https://user-images.githubusercontent.com/43399466/215959008-3ebca431-1f14-4d81-9f12-6bb232bfbee3.png">

### Click on Install suggested plugins

<img width="1291" alt="Screenshot 2023-02-01 at 10 58 40 AM" src="https://user-images.githubusercontent.com/43399466/215959294-047eadef-7e64-4795-bd3b-b1efb0375988.png">

Wait for the Jenkins to Install suggested plugins

<img width="1291" alt="Screenshot 2023-02-01 at 10 59 31 AM" src="https://user-images.githubusercontent.com/43399466/215959398-344b5721-28ec-47a5-8908-b698e435608d.png">

Create First Admin User or Skip the step [If you want to use this Jenkins instance for future use-cases as well, better to create admin user]

<img width="990" alt="Screenshot 2023-02-01 at 11 02 09 AM" src="https://user-images.githubusercontent.com/43399466/215959757-403246c8-e739-4103-9265-6bdab418013e.png">

Jenkins Installation is Successful. You can now starting using the Jenkins 

<img width="990" alt="Screenshot 2023-02-01 at 11 14 13 AM" src="https://user-images.githubusercontent.com/43399466/215961440-3f13f82b-61a2-4117-88bc-0da265a67fa7.png"> 
   
## step6:- After installing jenkins now i want creating pipeline 

"=>ultimate-cicd => configure => general -> pipeline => pipeline script from SCM ->SCM:git ->repo url: github repo link => Branches to build: */main => script path: repo path (cicd project/spring-bot/jenkinsfile) = save"
now install plugins
__
==>manage jenkins => plugins => Available plugins ==> Docker Pipeline and sonar qube scanner
## step7;=:- now install Sonarqube in ec2 server for that follow this
execute this line by line 
```
System Requirements

Java 17+ (Oracle JDK, OpenJDK, or AdoptOpenJDK)

Hardware Recommendations:

   Minimum 2 GB RAM
   2 CPU cores
sudo apt update && sudo apt install unzip -y
adduser sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip
unzip *
chown -R sonarqube:sonarqube /opt/sonarqube
chmod -R 775 /opt/sonarqube
cd /opt/sonarqube/bin/linux-x86-64
./sonar.sh start
```
after executing this commands now iwant access this sonar with ip address of ec2 and port no 9000 in broswer 
then enter username and password with "admin" then update password
now create secret token in sonar qube then go to manage jenkins ->credentials -> system ->global credentials then save secret token in it
## step8:- now install docker in your ec2 instance
## Docker Slave Configuration

Run the below command to Install Docker

```
sudo apt update
sudo apt install docker.io
```
 
### Grant Jenkins user and Ubuntu user permission to docker deamon.

```
sudo su - 
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker
```

Once you are done with the above steps, it is better to restart Jenkins.

```
http://<ec2-instance-public-ip>:8080/restart
```

The docker agent configuration is now successful.

## step9:- in this install kubernectes on your ec2 or system as your wish i perfered minikube

start it this command
```
minikube start

```
after start of minikube then search operator.io in that select argo cd and install with cmd they provided try this cmd
```
kubectl get pod -n operators
```
### now store the docker hub password and github token in jenkins credential

click on build now in jenkins to run the job

check all are running or not if any error is occure debug it

---------------------------------
## step10:- to create a new Argo CD cluster with manifest file

go through with Argo CD operator document in that go to user then go to basics use or copy the cluster file 

now create a controller for that 
```
vim argocd-basic.yml
kubectl apply -f argocd-basic.yml
kubectl get pods
kubectl get svc
kubectl edit svc example argo-cd server
  ==> type: NodePort # just change clusterip to nodeport
minikube service argocd-server
minikube service list
```
copy that port enrouted paste in browser your argo cd run the username will be admin

to get password run this cmd ``` kubectl get secret ```
then ```kubectl edit secret <cluster>``` 
you opened a file then copy a password 
get out from that cluster file and ``` echo <password> | base64 -d``` get a password login with it argo cd
create application ==> give basic information and url and path project and cluter url:https://kubernetes.default.svc and namespace:default --> create
