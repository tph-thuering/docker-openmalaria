#!/bin/bash
SCENARIOS_DIR=$HOME/scenarios
docker run --name="openmalaria" -v $SCENARIOS_DIR:/om/scenarios nicreed/openmalaria -s /om/scenarios/scenario.xml
docker cp openmalaria:/om/output.txt .
docker cp openmalaria:/om/ctsout.txt .
docker rm openmalaria
