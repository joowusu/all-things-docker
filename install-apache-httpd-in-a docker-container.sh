#!/bin/bash

# A bash script that installs Apache in a Docker Container. 
# By Joan Owusu


# Docker run creates and starts a Docker container based on the httpd image.
# Remember docker run automatically downloads (pulls) images that doesn't exist locally.
# Docker pull --> pulls an image or images from a repository/docker hub.
docker run -d -p 8800:80 httpd    # -d means --> container is detached and running in the background.
                                  # -p means --> opens up port 8800 & publish on the host IP to access remotely.
                                  # -p --> allows you to map the TCP port 80 of the container to a free open port 8800 on the host system.
                                  # httpd -->  Apache image listening on port 80.
curl localhost:8800               # Shows the default Apache webpage.  Curls localhost port.
sleep 2
docker ps                         # Shows running containers.
sleep 2
docker ps -a                      # Shows running and stopped containers.
sleep 2
docker network ls                 # Shows default networks.
#docker inspect <networkname>     # Shows detailed information about the network inspected.
#docker run -d -p 8801:80 httpd   # Starts a second Apache service.  Note: use a different port.  