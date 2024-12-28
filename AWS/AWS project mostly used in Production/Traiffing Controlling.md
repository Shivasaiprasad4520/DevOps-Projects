VPC With Public-Private Subnet in Production
-
Overview:-
  1. The VPC has public subnets and private subnets in two Availability Zones.
  2. Each public subnet contains a NAT gateway and a load balancer node.
  3. The servers run in the private subnets, are launched and terminated by using an Auto Scaling group, and receive traffic from the load balancer.
  4. The servers can connect to the internet by using the NAT gateway.

Pre-requsites:-
-
  1. Virtual Private Cloud
  2. Auto-Scaling Group
  3. Bastion Host or Jump Server
  4. Target Group
  5. Load Balancer
_________________________________

creating VPC
--------
In AWS Console search VPC and click on create VPC
![Screenshot 2024-12-28 224758](https://github.com/user-attachments/assets/159b1c4c-12e4-473b-ad74-208c5f6e9113)

![Screenshot 2024-12-28 224907](https://github.com/user-attachments/assets/807148bc-6d55-4714-ab8c-99c887b245ff)

![Screenshot 2024-12-28 224528](https://github.com/user-attachments/assets/767251c2-ec83-4b98-b58f-0bd4ff43e39e)

![Screenshot 2024-12-28 224927](https://github.com/user-attachments/assets/9f6e9fdf-b57f-4d31-9899-976dc64d3d7d)

![Screenshot 2024-12-28 225159](https://github.com/user-attachments/assets/ad4888da-cef1-4d72-91af-3f3a74e588ce)

___________________________
creating Auto scaling and lunching two instances
------------------

![image](https://github.com/user-attachments/assets/aaf42388-18d7-49ee-880c-7fdf09db8589)
before going application load balancer install the application in this private server
_______________________________
then lunching baston Instance
------------
Creating bastion server to act as bridge between private subnets and application in the absence of public subnet in that two servers
create a ubuntu server
![image](https://github.com/user-attachments/assets/8c54d6f1-db52-4221-b594-f0376e143bd2)
keep as it is with default configuration and lunch instance
![image](https://github.com/user-attachments/assets/921eeac5-4ce8-45f3-b042-7f01dc7b2563)
after lunching server connect to the server with SSH to from there to private host
open terminal use this command
cmd: scp -i /Users/Tarun/Downloads/aws-projects.pem /Users/Tarun/Downloads/aws-projects.pem ubuntu@15.206.66.197:/home/ubuntu
________________________________
Creating target Group
-------------
____________________
creating load balancer
-----------------
____________________
