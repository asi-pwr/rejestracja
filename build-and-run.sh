#!/usr/bin/env bash
docker build -t rejestracja-asi:latest .
docker run -it --rm -v "./data:/usr/src/app/data" -p "127.0.0.1:9292:9292" rejestracja-asi:latest