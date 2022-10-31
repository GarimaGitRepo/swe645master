# swe645master

Cluster Load Balancer ip and link for the web app on kubernetes cluster:  http://34.69.11.71:8080/SWE645/ 

Our homepage is hosted on S3 bucket (Homework - 1): - 

Garima Homepage: http://gausa.com.s3-website-us-east-1.amazonaws.com/
Zameer Homepage: http://zameerswe645.s3-website-us-east-1.amazonaws.com/


Steps Followed:

1) Containerzied the web application created in assignment 1 using Docker and pushed the docker image on docker hub.
2) Created a cluster on GKE : Google Kubernetes Engine which is managed by GCP.
3) Crated a github repo which contins all the configuration files such as eclipse project, war file, dockerfile, jenkins file and yaml files such as deployment.yaml
4) Created a jenkins server and crated a jenkins pipeline on it.
5) Set up the jenkins pipe line using jenkins file and other credential helpers such as docker hub , git repo and GCP cluster.
6) The jenkins pipeline has the follwoing stages  

Checkout code  -- THe code from github is check out to the jenkins server
Build image	   -- Docker image is built using the Docker plugins on jenkins 
Push image	   -- The build image is pushed to docker hub
Deploy to GKE  -- The newly created docker image is deployed on GKE using the info in deployment.yml

7) When we hit the load balancer ip of the GKE cluster we can see our containerized web application on the cluster.

Pls also see the video attached.
 
==================================Contributions==============================

Garima 
* Created git repo and pushed everything onto git repo.
* Set up a Jenkins sever , created and configured a jenkins pepline.

Zameer 
* Built the containerized web application on Docker and pushed it to DockerHub.
* Set GCP account and created the GCP cluster to deploy the containarized web application.
