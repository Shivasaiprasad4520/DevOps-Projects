1. Add dev configuration files and modify configuration then
   -
2. Install the Terraform and Terraform related Extenstion in GITHUB Codespace or VS Code
   -

3. Install AWS-CLI and Add Rebuild
   -
4. Configure AWS with Access-Key and Secret-Key
   -
5. Write the terraform template script in the main.tf file and variable.tf
   ---
   Terraform/aws_resources_with_terraform/resources_main.tf
   ______________
   Terraform/aws_resources_with_terraform/resources_variable.tf
   ______________
   Terraform/aws_resources_with_terraform/resources_terraform.sh
   _____________________
6. Then Runned this following commands in Terminal
   -----------
   terraform init
    _
   terraform plan
    _
   terraform apply
    _

   ![Screenshot 2024-08-29 002248](https://github.com/user-attachments/assets/01ba3e21-4040-4890-bcca-3fc06c93103a)

  
  In AWS Console one Instances is Created with EC2 Dashborad
  
   ![Screenshot 2024-08-29 013818](https://github.com/user-attachments/assets/c544e645-9935-4222-95cd-d3627eccd101)


7. In the previous step an a EC2 Instances is created, so login that server with SSH in the same terminal
   ---------------
   command:
   __________
      ssh -i ~/.ssh/id_rsa ec2-user@<instance_ip>   #change the username and instance public ip

    ![Screenshot 2024-08-29 013701](https://github.com/user-attachments/assets/dc798879-8440-483c-9bf7-3b48b151067d)

8. Now update the server install AWS-CLI in that server
   --------------------------------------------------
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   ______________
   unzip awscliv2.zip
   _________
   sudo ./aws/install
   ______________
   aws --version
   ___________

9. Then write a Shell Scripting File and Execute that File with this command
   -
  ./filename.sh us-west-1 ec2
   __
   
10. See the Output 
    -
   ![Screenshot 2024-08-29 021358](https://github.com/user-attachments/assets/88389789-960d-4208-aa0a-3fa3dab6868f)

11. Logout the server with Exit command
    -
    command:
    _______________________
    exit

12. Terminate the Instaces destroy command in terminal
    -
    command:
     -
    terraform destroy
    
    ![Screenshot 2024-08-29 022215](https://github.com/user-attachments/assets/0c38b24d-265d-40ef-b16e-b3fa8b35b289)
