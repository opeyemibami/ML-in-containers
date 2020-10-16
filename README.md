## Machine learning and Tensorflow app development in containers
This project utilizes docker for machine learning experimentation, research and deployment as microservice. 
You can use docker swarm or kubernetes to orchestrate the sercives declared in the docker compose file
## Model architecture 
![Model architecture](architecture.png)


#### Steps to get the app running: 
- clone the repository ```git clone https://github.com/opeyemibami/ML-in-containers.git ```
-  ```cd ML-in-containers ```
- install docker on you host machine if you don't have it install [docker installation](https://docs.docker.com/get-docker/)
### Walk through the notebook 
To start the notebook, run this command in your terminal
- ```docker-compose up tensorflow ```
- copy the web url and paste in any browser to access the notebook
### Build custom tensorflow serving docker image 
run this command in your terminal
- ``` docker-compose build tf_model_serving```

### After custom image has been built, with docker swarm, we can start up the services listed in the docker compose file using the commands below in terminal: 
- ``` docker swarm init ```
-  ``` docker stack deploy -c docker-compose.yml tf ```
With this, docker will create a virtual network which allows all containers to communicate with each other by name.

### To check the logs each containers, we can run the command below which is a general format of docker service logs <any of the service names created above>
- Tensorflow serving:  ``` docker service logs tf_tf_model_serving ``` 
- Jupyter notebook: ``` docker service logs tf_tensorflow ```
With the jupyter logs, you can copy the web url to access the serving notebook and run the predict function to send requests to the server. 
