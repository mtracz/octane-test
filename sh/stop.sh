#!/bin/bash
cd ./../traefik && \
docker-compose stop && \
cd ./../services && \
docker-compose stop