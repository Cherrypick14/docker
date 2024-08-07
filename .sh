#!/bin/bash

# build the container
docker build -t ascii-art-web:art-web .

# Run the container application

docker run  -d -p 8000:8000 --name c2 ascii-art-web:art-web


