FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    gcc-arm-none-eabi \
    build-essential \
    git \
    make \
    cmake \
    python3 \
    python3-pip

RUN pip3 install pillow

RUN git clone https://github.com/raspberrypi/pico-sdk && \
    cd pico-sdk && git submodule update --init && cd ../ && \
    git clone https://github.com/raspberrypi/pico-extras && \
    git clone https://github.com/pimoroni/pimoroni-pico && \
    git clone https://github.com/Gadgetoid/PicoDVI -b av-player

RUN cd PicoDVI/software && \
    mkdir build && \
    cd build && \
    cmake .. -DDVI_DEFAULT_SERIAL_CONFIG=pimoroni_demo_hdmi_cfg -DPICO_SDK_PATH=../../../pico-sdk -DPICO_SDK_POST_LIST_DIRS=`pwd`/../../../pico-extras && \
    make raw_av_player -j && \
    cd ../../../

