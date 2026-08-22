#!/bin/bash
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  podman \
                  runc

echo "removed the previous docker files"

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

echo "installing docker...."
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "installed docker successfuly"

echo "starting the docker..."
sudo systemctl start docker

echo "docker started successfuly"

echo "enable the docker..."
sudo systemctl enable docker

usermode -aG docker ec2-user