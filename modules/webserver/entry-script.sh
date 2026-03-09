#!/bin/bash
dnf update -y
dnf install -y docker
systemctl enable docker
systemctl start docker
docker run -d -p 8080:80 nginx
