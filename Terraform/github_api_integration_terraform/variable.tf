# Define an input variable for the EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Define an input variable for the EC2 instance AMI ID
variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
  default = "ami-0d53d72369335a9d6"
}

# Define an input variable for the EC2 instance Subnet ID
variable "subnet_id" {
  description = "EC2 SUBNET ID"
  type        = string
  default     = "subnet-045bed748d0d38912"
}
  
