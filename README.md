### Project Goal:

    This is a demo for the process of deploying a full stack app to AWS and 
    Creating a pipeline through CircleCi to automate the process.

        1- Back End Part => To Elastic Beanstalk (EB)
        2- Database Part => To Relational Database Service (RDS)
        3- Front End Part => To S3 Bucket (S3)
        4- Creating a pipeline on CircleCi
        5- Documenting the whole process

    For a quick glance at the app you can visit this link:

        http://randomtestfull.s3-website-us-east-1.amazonaws.com

    All Screenshots are attached for the whole steps of the project

### Project Setup:

    1- Creating a RDS on AWS to serve as our database for the app.

    2- Creating EC2 instance through Elastic Beanstalk (EB) on aws to deploy 
       our Back End API to it

    3- Creating a S3 Bucket on AWS to host our Front End UI

    4- Setting Environment Variables on Elastic Beanstalk (EB)

    5- Creating CircleCi Account then connecting it to Github account 

    6- Writing the pipeline process inside ./.circleci/config.yml file

    7- Writing the install, test, build and deploy scripts inside 
       package.json file in the root of the project folder


    And, if you want to run it locally:

    ## to run back end api

        ```cd udagram-api```
        ```npm install```
        ```npm run dev```

    ## to run front end ui

        ```cd udagram-frontend```
        ```npm install```
        ```npm run start```

    


