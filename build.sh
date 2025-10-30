#!/bin/bash

cd $(realpath $(dirname $0))

#cp manifests/nabucasa/zbt2_zigbee_ncp.yaml manifests/slzb-mr3.yaml

#sed -i 's/EFR32MG24A420F1536IM40/EFR32MG24A020F1024IM40/g' manifests/slzb-mr3.yaml
#sed -i 's/Home Assistant Connect ZBT-2 Zigbee/SLZB-MR3/g' manifests/slzb-mr3.yaml
#sed -i 's/"Nabu Casa"/"SMLight"/g' manifests/slzb-mr3.yaml
#sed -i 's/"Home Assistant Connect ZBT-2"/"MR3"/g' manifests/slzb-mr3.yaml

#sed -i '/SL_IOSTREAM_USART_VCOM_TX_PIN/c\  SL_IOSTREAM_USART_VCOM_TX_PIN: 5' manifests/slzb-mr3.yaml
#sed -i '/SL_IOSTREAM_USART_VCOM_RX_PIN/c\  SL_IOSTREAM_USART_VCOM_RX_PIN: 6' manifests/slzb-mr3.yaml
#sed -i '/SL_IOSTREAM_USART_VCOM_CTS_PORT/c\  SL_IOSTREAM_USART_VCOM_CTS_PORT: 0' manifests/slzb-mr3.yaml
#sed -i '/SL_IOSTREAM_USART_VCOM_CTS_PIN/c\  SL_IOSTREAM_USART_VCOM_CTS_PIN: 0' manifests/slzb-mr3.yaml
#sed -i '/SL_IOSTREAM_USART_VCOM_RTS_PORT/c\  SL_IOSTREAM_USART_VCOM_RTS_PORT: 0' manifests/slzb-mr3.yaml
#sed -i '/SL_IOSTREAM_USART_VCOM_RTS_PIN/c\  SL_IOSTREAM_USART_VCOM_RTS_PIN: 0' manifests/slzb-mr3.yaml

if [ ! -d build ]; then mkdir build ; fi

docker build . -t silabs-firmware-builder-nabucasa
