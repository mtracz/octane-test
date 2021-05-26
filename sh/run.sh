#!/bin/bash
cd ./../traefik && \
docker-compose up -d && \
cd ./../services && \
docker-compose up -d