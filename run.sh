#!/usr/bin/env bash

# You can build an image yourself by running:
# docker build -t rejestracja-asi:latest .
# then you can start it by running
# docker run -it --rm -v "./data:/usr/src/app/data" -p "127.0.0.1:9292:9292" rejestracja-asi:latest

docker run -it --rm -v "./data:/usr/src/app/data" -p "127.0.0.1:9292:9292" ghcr.io/asi-pwr/rejestracja:latest