
### App Infrastructure

    This Document elastrates the setup of different parts of the app

    to be fully working (Database, API and UI)

    ## Setting up the Database (RDS):

        - After creating an account on aws

        - Search for RDS to locate the RDS page

        - Then choose Create Database button to start creating new RDS

        - Make sure to use Postgres engine

        - Make sure to set it to Public on the Availability Section to be 

          accessible from requests ouside your account

    ## Setting up the Elastic Beanstalk Envirnoment (EB):

        Through the AWS Console

        - Search for EB to locate the Elastic Beanstalk page

        - Then choose Create a new environment 

        - Choose Web server environment

        - Set Application Name

        - Set Platform to use Node.js

        - Zip your ready folder to deploy then Upload it to EB 

        - Then Click Create environment

        - After it is created check the environment health if it is OK.

    ## Setting up the S3 Bucket (S3):

        Through the AWS Console

        - Search for S3 to loacte the S3 page

        - Choose Create bucket

        - Give a Bucket name this should be unique name and somehow random as 
          
          it will be visible to anyone > our app s3 bucket randomfulltest

        - Choose Region

        - Enable ACLs

        - Unblock Public Access to allow Static Hosting of our App UI

        - After creation go to Properties tab to allow the Static Hosting 

          feature and add the index.html file name to Index Document and Error 

          Document fields

        - Then go to Permissions tab to add the Bucket Policy and add this to
          
          the policy section

          {
                "Version": "2012-10-17",
                "Statement": [
                    {
                        "Sid": "PublicReadGetObject",
                        "Effect": "Allow",
                        "Principal": "*",
                        "Action": "s3:GetObject",
                        "Resource": "arn:aws:s3:::randomtestfull/*"
                    }
                ]
          }

          