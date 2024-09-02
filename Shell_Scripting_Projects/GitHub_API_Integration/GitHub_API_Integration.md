# In this project we want to access or revoke permission and assigning permission or Monitoring the particular repository in GitHub in day to day bases for that i am write a shell-script to intergret the GitHub API For Monitoring the Repo
* Listing people who have access to the repo if someone is not there in company but have access then we revoke
  _______
  Steps:
  ====
  1. Create a EC2 Instances in AWS Console
     -------
      
     ![image](https://github.com/user-attachments/assets/43678973-be04-467b-a6ae-acbfe4bc2047)
 


  2. Login to the server with keypair and Machin name in powershell interface or Mobaxterm i used powershell
     ----------
    * `` ssh ``
    * ``ssh -i shell-key.pem ubuntu@54.53.66.767 ``
    ___
  3. Install "jq" plugin
     ------------------
    * `` sudo apt-get install jq -y ``
    * `` jq --version ``
     __________

     ![image](https://github.com/user-attachments/assets/60fbdc2c-d145-4d5d-8b5b-2f68180f042c)


  4. write a shell script file like this
     -------
     * `` https://github.com/Shivasaiprasad4520/DevOps-Projects/blob/main/Shell_Scripting_Projects/GitHub_API_Integration/GitHub_API_Integration.sh ``

   5. Change permission to that file
      --
     * `` chmod 766 example-project.sh ``
   
   6. Export your github authentication means username and token
      ---------
     * `` export username="shivasaiprasad4520 ``
         
     * `` export token="sfgysrbdzczdbghgkungvghj" ``

   8. Now execute this dot slash extension with file and github username and repo name like
      ----------
     * `` ./example-project.sh shivasaiprasad4520 devops-project ``
       _________

      ![Screenshot 2024-08-31 011806](https://github.com/user-attachments/assets/91870c19-7910-4c20-acd2-61b482495b9d)


