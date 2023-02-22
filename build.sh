#!/bin/sh

cd /PicoDVI/software/build
cmake .. -DDVI_DEFAULT_SERIAL_CONFIG=pimoroni_demo_hdmi_cfg -DPICO_SDK_PATH=../../../pico-sdk -DPICO_SDK_POST_LIST_DIRS=`pwd`/../../../pico-extras
make raw_av_player -j

cp apps/raw_av_player/raw_av_player.uf2 /host/