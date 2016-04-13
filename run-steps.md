# Run OpenMalaria with the relevant scenario file (-d means detached mode).
docker run --name="openmalaria" -d -v <directory-with-scenario>:/om/scenarios nicreed/openmalaria -s /om/scenarios/<scenario-name>.xml
# Copy the output files to your host directory.
docker cp openmalaria:/om/output.txt .
docker cp openmalaria:/om/ctsout.txt .
# Remove the container.
docker rm openmalaria
