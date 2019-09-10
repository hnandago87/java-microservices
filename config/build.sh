#!/bin/bash
docker build . -t configserver
docker run -d -p 8888:8888 configserver