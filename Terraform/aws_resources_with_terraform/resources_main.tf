provider "aws" {
  region      = "us-west-1"
}

# Create an EC2 instance using the input variables
resource "aws_instance" "terraform_shell_project" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = aws_key_pair.shell-key.key_name
}

# Define the key pair
resource "aws_key_pair" "shell-key" {
  key_name   = "shell-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.terraform_shell_project.public_ip
}
