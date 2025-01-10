#Build image from Dockerfile
docker build -t nginxonubuntu .
#Check the image exists
docker images
#Create container from image
docker run -d -p 8080:80 --name nginxonubuntu nginxonubuntu
#Check the container is running
docker ps
#Check the container is running
curl http://localhost:8080