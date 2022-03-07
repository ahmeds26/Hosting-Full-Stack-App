
### CircleCi Pipeline Process

    This document demonstrates how to setup the CircleCi pipeline to
    automate the process of Building and Deploying the App

    ## Creating CircleCi Account:

        - Go to https://circleci.com/ to craete an account
        
        - Link your account to your Github account


    ## Creating config.yml file:

        - Inside the project root folder we create a folder called 

            .circleci then creating a file called config.yml inside it

            so it will be like this ./.circleci/config.yml

    ## Configuring config.yml file:

        This file is configured through 3 essential parts

        - Version:

            we specify the version of CircleCi to be used like this

            version: 2.1

        - Orbs:

            we specify the Orbs section to quickly integrate the dependencies 

            required for the project like (install node, aws cli and so on)

            for our case here:

            orbs:
              node: circleci/node@5.0.0
              aws-s3: circleci/aws-s3@2.0

        - Jobs:

            here we specify the jobs that will be executed when triggering the pipeline 

            for our app we have one job is build it and deploy to aws

            first we specify the docker image of circleci 

                docker:
                  # the base image can run most needed actions with orbs
                  - image: "cimg/base:stable"

            then filters to only trigger the pipeline when we push to main or master branches

                filters:
                  branches:
                    only: 
                     - main
                     - master

            then we have the steps to be done each step is configured like this

                run:
                  name: <name of the step here>
                  command: <command to be run here>

