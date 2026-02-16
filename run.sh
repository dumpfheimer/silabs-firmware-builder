#!/bin/bash

cd $(dirname $(realpath $0))

docker run -v .:/repo -t silabs-firmware-builder-nabucasa --manifest manifests/slzb-mr3.yaml --output gbl --output-dir artifacts
