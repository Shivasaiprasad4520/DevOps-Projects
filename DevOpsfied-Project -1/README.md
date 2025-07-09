# Documentation For CI-CD  Pipeline Scheduling with CronJob

This documentation provides a step-by-step guide for setting up a CI/CD pipeline in GitLab using a `.gitlab-ci.yml` file and scheduling it with a CronJob.

## Writing the `.gitlab-ci.yml` File

The `.gitlab-ci.yml` file is used to automate tasks such as testing, building, and deploying your application. It defines a pipeline with multiple stages:

- **Test stage**: Performs security checks on your code or application.
- **Build stage**: Executes or compiles your application.
- **Deploy stage**: Releases your application or code to the production environment, making it accessible to end-users.

In the deploy stage, you can use **rules** to control when the pipeline runs. For example, you can set up manual triggers (requiring human intervention) or schedule automatic runs using a CronJob.

## Setting Up a CronJob

A CronJob is a time-based scheduler that runs tasks at specified intervals. To set up a pipeline schedule in GitLab:
  ![image-1](https://github.com/user-attachments/assets/ed273fec-678a-4dfc-85bb-d7fe7a47fd62)

1. Click **Build** on the left sidebar.
   ![image-2](https://github.com/user-attachments/assets/25fe386f-3e13-4b70-94f0-2cf4b5140096)
2. Select **Pipeline Schedules**.
   ![image-3](https://github.com/user-attachments/assets/3f503a46-50d2-4f6f-91e3-2402241d68d7)
3. Click **New schedule**.
   ![image-4](https://github.com/user-attachments/assets/2eb74922-0826-4960-99b4-ae86f294a1e6)
4. Fill in the required fields:
    - Description
    - Cron timezone
    - Interval pattern (customized as needed)
    - Target branch or tag
5. Click **Create pipeline schedule**.
   ![image-6](https://github.com/user-attachments/assets/49fa7ccc-0b33-483e-a564-7b38dbebc9ae)
Refer to the images in this document for visual guidance.
 ![image-5](https://github.com/user-attachments/assets/99927b75-8e6a-4e58-9ab0-e9f8905484f4)

## Defining Variables in CI/CD

If you need to declare variables (such as secrets or project-specific values) for your pipeline:

1. Click **Settings** on the left sidebar.
   ![image-7](https://github.com/user-attachments/assets/f623d6db-8ba2-4f2d-9472-70bca2f6f8c9)
2. Go to **CI/CD** and expand the **Variables** section.
   ![image-8](https://github.com/user-attachments/assets/50628e5b-ddc3-4961-8e82-e5c22d3f282f)
3. Click **Add Variable**.
    ![image-9](https://github.com/user-attachments/assets/fa6f5c35-6ab7-4ccc-ae96-e88cc7321a0c)
4. Enter the key and value for your variable.
   ![image-10](https://github.com/user-attachments/assets/b46ce34b-1a68-4e52-be8c-4627835218d5)

These variables can be used in your pipeline configuration.

## Dry Run the Pipeline

After scheduling your pipeline with a CronJob, you can manually trigger a dry run to ensure everything works as expected:

1. Click **Build** on the left sidebar.
   ![image-2](https://github.com/user-attachments/assets/9802ed55-cbfe-459b-8c83-228a3e853be2)

2. Select **Pipeline Schedules**. 
   ![image-3](https://github.com/user-attachments/assets/81071f91-9e2a-41ae-a7b9-1cdda73ed0b2)

3. Click the **Run** button next to your scheduled pipeline.
   ![image-11](https://github.com/user-attachments/assets/55e401dc-dccd-4d65-b5a4-ac95dff908d8)

This allows you to verify your pipeline setup before relying on the scheduled runs.




