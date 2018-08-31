# Sample started app 
This application use to show a start level example of docker-based application in node.js 

Implementing Microsoft Azure Infrastructure Solutions : Exam Guide 70-533
Author : Melony QIN

More details on :
https://www.packtpub.com/virtualization-and-cloud/implementing-microsoft-azure-infrastructure-solutions-exam-guide-70-533


## Command to use 

To build docker image 

```
docker build -t melonyq/cloudmelonstartapp .
```


Run docker application

```
docker run -p 49160:8080 -d melonyq/cloudmelonstartapp
```


Check local docker images 

```
docker images
```


Get container ID and other useful information

```
docker ps
```


