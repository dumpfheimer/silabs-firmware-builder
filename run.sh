#!/bin/bash

cd $(dirname $(realpath $0))

docker run -v ./build:/build/ -v .:/proj:ro -t silabs-firmware-builder-nabucasa bash -c "pip install --break-system-packages -r /proj/requirements.txt ; python3 /proj/tools/build_project.py --manifest /proj/manifests/slzb-mr3.yaml --sdk /gecko* --sdk /simplicity* --toolchain /opt/arm-gnu-toolchain* --output gbl"
