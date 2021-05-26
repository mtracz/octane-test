# octane-test

## Installation

First run:
```
bash ./sh/build.sh
# or
make build
```
This script will create docker networks:
- traefik-octane-test-proxy

Prepare Traefik.\
Prepare services:

---
If you will run containers again:
```
bash ./sh/run.sh
# or
make run
```
---
### Host ports

You can customize host ports in .env file.

| default host port  | container port  | description  |  
|---|---|---|
| 2137  | 8080  | dashboard  | 
| 80  |  80 | http  |

## Traefik
* dashboard\
  __localhost:1234__

# Make commands
`make <command-name>`
- run-services
- build-services
- stop-services

  
- run-traefik
- build-traefik
- stop-traefik

  
- build
- run
- stop
