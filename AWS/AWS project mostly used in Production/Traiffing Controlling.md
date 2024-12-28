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
``In AWS Console search VPC and click on create VPC``

![Screenshot 2024-12-28 224758](https://github.com/user-attachments/assets/159b1c4c-12e4-473b-ad74-208c5f6e9113)

![Screenshot 2024-12-28 224907](https://github.com/user-attachments/assets/807148bc-6d55-4714-ab8c-99c887b245ff)

![Screenshot 2024-12-28 224528](https://github.com/user-attachments/assets/767251c2-ec83-4b98-b58f-0bd4ff43e39e)

![Screenshot 2024-12-28 224927](https://github.com/user-attachments/assets/9f6e9fdf-b57f-4d31-9899-976dc64d3d7d)

![Screenshot 2024-12-28 225159](https://github.com/user-attachments/assets/ad4888da-cef1-4d72-91af-3f3a74e588ce)

___________________________
creating Auto scaling and lunching two instances
------------------
``In AWS Console search Auto-scaling and click on create Auto Scaling``
``in that create a template to Auto-scaling group``

![Screenshot 2024-12-28 230315](https://github.com/user-attachments/assets/46fb386e-c231-4774-935f-9374fbc96faf)

![Screenshot 2024-12-28 230346](https://github.com/user-attachments/assets/0d3b6290-bb21-4280-ac50-cab493dbd341)

![Screenshot 2024-12-28 230414](https://github.com/user-attachments/assets/2aa7877a-b3f7-4528-bd43-b8093de74787)

![Screenshot 2024-12-28 230448](https://github.com/user-attachments/assets/df17831e-c184-4811-aafc-c7232f054dcd)

![Screenshot 2024-12-28 230514](https://github.com/user-attachments/assets/f4980fb0-f84f-45e6-88a4-f1c86c4743c3)

![Screenshot 2024-12-28 230544](https://github.com/user-attachments/assets/57a9d298-9999-41ee-b253-463b27792806)
``then lunch the auto-scaling group template``
___________
``After that create the auto-scaling group``

![Screenshot 2024-12-28 231025](https://github.com/user-attachments/assets/03bf5bce-8148-4029-aad3-882e109a7d29)

![Screenshot 2024-12-28 231257](https://github.com/user-attachments/assets/2163cc49-6a6a-4e54-91e5-f9757cd337af)

![Screenshot 2024-12-28 231421](https://github.com/user-attachments/assets/ff1a369f-93bb-48b5-917b-26052b8fee67)

![Screenshot 2024-12-28 232636](https://github.com/user-attachments/assets/22ee8e09-3720-4cb7-8223-02e339313e49)


![image](https://github.com/user-attachments/assets/aaf42388-18d7-49ee-880c-7fdf09db8589)

``before going application load balancer install the application in this private server``
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
