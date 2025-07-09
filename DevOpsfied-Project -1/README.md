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

1. Click **Build** on the left sidebar.
2. Select **Pipeline Schedules**.
3. Click **New schedule**.
4. Fill in the required fields:
    - Description
    - Cron timezone
    - Interval pattern (customized as needed)
    - Target branch or tag
5. Click **Create pipeline schedule**.

Refer to the images in this document for visual guidance.

## Defining Variables in CI/CD

If you need to declare variables (such as secrets or project-specific values) for your pipeline:

1. Click **Settings** on the left sidebar.
2. Go to **CI/CD** and expand the **Variables** section.
3. Click **Add Variable**.
4. Enter the key and value for your variable.

These variables can be used in your pipeline configuration.

## Dry Run the Pipeline

After scheduling your pipeline with a CronJob, you can manually trigger a dry run to ensure everything works as expected:

1. Click **Build** on the left sidebar.
2. Select **Pipeline Schedules**.
3. Click the **Run** button next to your scheduled pipeline.

This allows you to verify your pipeline setup before relying on the scheduled runs.

Why to use gitlab-cl file?
It is used to automate the execution of task or File 
In gitlab-CI.yaml file we are going to assignnig Test,Build,Deploy stages to make a pipeline to execute the file
$ "Test stage" is to be used for security check in code or file or that could be application
$ "Build stage" is to be used for executing the app or code 
$ "Deploy stage" is to be used for relasing the application  or code  into the production environment, making it accessible to end-users.
![alt text](image.png)

`in this deploy stage we use "Rules" (rules are like condition). we use manual and schedule condition to automate the pipeline 
`a human intervision need for manual pipeeline
`it automatical run pipeline as per schedular time with the help of "CronJob"
```

### CronJob

It's basically a time schedular to run a task at given particular time
![alt text](image-1.png)
after writing a CI File setup a cronjob

setup:
click "build" on left slidebar
![build](image-2.png)
then you got some option on those click only "pipeline schedular"
![alt text](image-3.png)
in the above image you seen a "New schedule" click on it
![alt text](image-6.png)
fill the block with reqriments
1. Give the description
2. Select the cron timezone 
3. Select the Interval pattern as customized 
4. Select target branch or tag
5. Create pipeline schedular
referrence image below
![alt text](image-5.png)

### Define Variable in CI-CD

Is there any variable you want declare or assign to main file that could be secrets or any values related to project

after cronjob setup a delaring variable to CI-CD
click "setting" on left slidebar
![alt text](image-7.png)
click on "CI/CD" then after "Variable"
![alt text](image-8.png)
In "Variables" click on "Add Variable"
![alt text](image-9.png)
declare the "value" with "key"
Use this as referrence
![alt text](image-10.png)

##After Declaring the Values and You Want Dry Run the Pipeline 

As you know that you schedule the a pipeline with the particular time with cron job, so that the pipeline work on that time without human intervision

For Dry Run: just try this
click "build" on left slidebar
![build](image-2.png)
then you got some option on those click only "pipeline schedular"
![alt text](image-3.png)
click on "Run button" as show in below image
![alt text](image-11.png)



