[![CircleCI](https://circleci.com/gh/PawanKolhe/Operationalize-a-Machine-Learning-Microservice-API.svg?style=svg)](https://circleci.com/gh/PawanKolhe/Operationalize-a-Machine-Learning-Microservice-API)

# Operationalize a Machine Learning Microservice API

This Microservice Project is part of the Udacity Cloud DevOps Engineer Nanodegree

![Screenshot](https://i.imgur.com/0OsN4o8.png)

## Project Overview

There is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. Tasks in this project:
* Build a Frontend to accept user input data and produce a prediction
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Integrate with CircleCI to indicate that your code has been tested

---
## Files Explaination

`Dockerfile` - Contains commands used to create a docker image  
`Makefile` - Contains useful set of commands to setup environment, run tests and run lints  
`app.py` - Python flask app that returns predictions about housing prices when requested using API calls  
`make_prediction.sh` - Send API request to Flash app running and receives response  
`run_docker.sh` - Script to build and run docker image locally  
`upload_docker.sh` - Script to tag and upload docker image to docker hub  
`run_kubernetes.sh` - Script to setup and run app on kubernetes  
`.circleci/config.yml`: CircleCI configuration file for running the tests  
`templates/index.html`: Frontend of this project where you can send input and receive a prediction  
`static/`: Frontend assets

## Intall

- Docker (Requirements: WSL2 / Windows 10 Pro, Enterprise, or Education)
- Virtual Machine (VirtualBox / HyperV / etc.)

## Setup the Environment

* Create a virtualenv and activate it

```bash
python3 -m venv <name_of_venv>
source <name_of_venv>/bin/activate
```

* Run `make install` using bash to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

1. To start a local cluster:  
`minikube start`

2. To deploy this application in kubernetes:  
`./run_kubernetes.sh`

3. When the pod is up and running, make predictions using:  
`./make_prediction.sh`

4. Delete the cluster after your done:  
`minikube delete`
