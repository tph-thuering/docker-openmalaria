#!/bin/bash
docker run --name="openmalaria" -v $1:/om/scenarios nicreed/openmalaria -s /om/scenarios/scenario.xml
docker cp openmalaria:/om/output.txt .
docker cp openmalaria:/om/ctsout.txt .
docker rm openmalaria
