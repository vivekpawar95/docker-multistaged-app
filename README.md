
## Description

 This Repository explores the concpets of multistaging and distroless images.
[Medium Article: Make your docker builds image 1000 times smaller using Multi-staging and distroless images](https://medium.com/@vivekpawar95/make-your-docker-build-image-1000-times-smaller-using-multi-staging-and-distroless-images-91805b3e9bcf)
## comands

```bash
#Build command
$ docker build -t node-app-image .   

#start container
$ docker run --name node-app-container -p 3000:3000 node-app-image:latest

#stop conatiner
$ docker stop node-app-container

#rm container 
$ docker rm node-app-container

#remove image (first stop conatiner instances)
$ docker rmi node-app-image:latest

#system prune commnd
$ docker system prune
```

