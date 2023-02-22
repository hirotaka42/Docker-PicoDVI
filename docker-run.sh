#!/bin/sh

docker run --rm -v $(pwd):/host picodvi-build-env sh /host/build.sh