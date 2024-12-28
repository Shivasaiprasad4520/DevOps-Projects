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
___________________________
creating Auto scaling and lunching two instances
------------------
![image](https://github.com/user-attachments/assets/aaf42388-18d7-49ee-880c-7fdf09db8589)
before going application load balancer install the application in this private server
_______________________________
then lunching baston Instance
------------
________________________________
Creating target Group
-------------
____________________
creating load balancer
-----------------
____________________
