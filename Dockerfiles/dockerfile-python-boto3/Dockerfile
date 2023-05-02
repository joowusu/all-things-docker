# This code is a Dockerfile, which is a set of instructions used to build Docker images. 
# The image is based on Python 3.11 and it installs Boto3, the AWS SDK (Software Development Kit) for Python.

# Python 3.11 base image - Official image on Dockerhub.
FROM python:3.11

MAINTAINER Joan Owusu

# Ignores running pip as the root user.
ENV PIP_ROOT_USER_ACTION=ignore

# Update list of packages.
# Upgrade newest versions of all packages currently installed.
RUN apt-get update -y && apt-get upgrade -y && pip install --upgrade pip

# Install Boto3 and its dependencies via pip.
# Using `--no-cache-dir` ensures the latest version of packages are downloaded and 
# issues caused by outdated or incompatible cached packages are avoided. 
RUN pip3 install --no-cache-dir boto3

# This sets the working directory for the container to `/dockerfile-project`.
# Working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD  instructions after "WORKDIR" instructions.
WORKDIR /dockerfile-project

# Copies all the information in the current working directory (`.`) of the host,
# to the working directory of the container (`/dockerfile-project`).
COPY . /dockerfile-project

# Creates a `greetings.py` file inside the container.
RUN echo "print('Hello World')" > greetings.py

# CMD instruction specifies the command to run when the container starts.
CMD ["python3.11", "greetings.py"]
