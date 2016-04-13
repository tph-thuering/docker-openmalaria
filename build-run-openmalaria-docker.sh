#!/bin/bash
docker build -t nicreed/openmalaria:latest .
sh run-openmalaria-docker.sh $1
