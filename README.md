
## Description

 This Repository explores the concpets of multistaging and distroless images.
[Medium Article: Build your docker images 1000% smaller using Multi-staging and Distroless image.](https://medium.com/@vivekpawar95/make-your-docker-build-image-1000-times-smaller-using-multi-staging-and-distroless-images-91805b3e9bcf)
## commands

## node server

```bash

#install packages
$ npm install

#install only production packages
$ npm install --omit=dev

#start in watch mode
$ npm rn start:dev

# build server
$ npm run build

#start server 
$ npm run start

```


## docker 
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

