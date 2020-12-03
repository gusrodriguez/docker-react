# Docker/React app

This project recreates a development/deployment workflow of a React application by using Docker containers, Continous Integration and Continuous Delivery with Travis and deployment with the Elastic Beanstalk service of AWS.

## In the development environment:

- Use Travis to pull the code of a trivial React application from git and run the tests within a docker container, to mark a pull request as able to merge.

## Continuous delivery in the production environment:

- If a change was made in the master branch (for example, a Merge), Travis will pull the code, run the tests in a temporary container, and build the application. Then it will run an nginx image in another docker container where the built application will be copied to. Then will be automatically deploy the nginx container to an instance ot AWS Elasticbeanstalk.