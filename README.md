# Dockerfile Explanation

This `Dockerfile` defines the steps to build a Docker image for an NGINX web server using the latest Ubuntu base image.

## Instructions Breakdown

### 1. `FROM ubuntu:latest`
- Specifies the base image for the container.
- In this case, it uses the latest version of Ubuntu from Docker Hub as the foundation for the container.

### 2. `LABEL maintainer="Dennis Tei-Muno <yaw---@hotmail.com>"`
- Adds metadata to the image, specifying the maintainer's contact information.
- This helps others identify the person responsible for maintaining the image.

### 3. `RUN apt-get update`
- Updates the package lists for the Ubuntu package manager (`apt-get`).
- Ensures the container has access to the latest versions of available packages.

### 4. `RUN apt-get -y install nginx`
- Installs the NGINX web server on the container.
- The `-y` flag automatically confirms prompts, ensuring the installation proceeds without manual intervention.

### 5. `EXPOSE 80/tcp`
- Informs Docker that the container will listen for TCP traffic on port `80`.
- This is the default port for HTTP traffic, making it suitable for web servers like NGINX.

### 6. `CMD ["nginx", "-g", "daemon off;"]`
- Specifies the default command to run when the container starts.
- This command starts the NGINX server and keeps it running in the foreground (`daemon off`) to prevent the container from exiting immediately.

## Usage

To build and run the Docker image:

1. **Build the Image**  
   ```bash
   docker build -t my-nginx-image .
