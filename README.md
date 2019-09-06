## First step, creating jenkins_home 
Inside the project execute:

```bash
bash prepare.sh
``` 

This script create the folder jenkins_home inside the project.

## Starting jenkins

The jenkins server is created through Docker Compose. To start up the server simply run:

```bash
docker-compose up -d
```

You can find the docker-compose file at the root of this project.

You can find out that the jenkins server is running by accessing through any browser:

```bash
http://localhost:8181
``` 

## Create Seedjob

In jenkins you need to create a new job put whatever name and select freestyle project

Inside your new project click configure
    and in the layer source code management
        select git and use the url project

```bash
https://github.com/desckjet/elasticsearch-cicd.git
``` 

    In the layer build
        add build step and select process job dsls
            click on look on filesystem 
                write in the textbox name: DSL Scripts  -->
```bash
job
``` 

    save and run your project
    
    If you come back to  http://localhost:8181

    you can see the new project created and configured.

## Run the project

Inside the project that was generated automatically click on run with parameters

you need to specify the route in wich you clone the project
the first script name prepared.sh created the folder jenkins_home inside the root project specify that in the box route like this

```bash
/home/davidacevedo/repositories/elasticsearch-cicd/jenkins_home/workspace
``` 

Now the pipeline is building..

## Execute Integration test

in the root folder enter to the folder name integration_test and execute

```bash
bash test.sh
```