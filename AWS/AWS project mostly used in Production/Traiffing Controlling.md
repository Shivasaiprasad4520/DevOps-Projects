VPC With Public-Private Subnet in Production
-
Overview:-
  1. The VPC has public subnets and private subnets in two Availability Zones.
  2. Each public subnet contains a NAT gateway and a load balancer node.
  3. The servers run in the private subnets, are launched and terminated by using an Auto Scaling group, and receive traffic from the load balancer.
  4. The servers can connect to the internet by using the NAT gateway.
_________________________________
creating VPC
--------
creating Auto scaling and lunching two instances
------------------
then lunching baston Instance
------------
Creating target Group
-------------
creating load balancer
-----------------
