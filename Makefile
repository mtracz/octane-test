SERVICES_DIR=./services
TRAEFIK_DIR=./traefik
SH_DIR=./sh

.ONESHELL .PHONY: run-services
run-services:
	cd ${SERVICES_DIR}
	docker-compose up -d

.ONESHELL .PHONY: stop-services
stop-services:
	cd ${SERVICES_DIR}
	docker-compose stop

.ONESHELL .PHONY: build-services
build-services:
	cd ${SERVICES_DIR}
	docker-compose build

.ONESHELL .PHONY: run-traefik
run-traefik:
	cd ${TRAEFIK_DIR}
	docker-compose up -d

.ONESHELL .PHONY: build-traefik
build-traefik:
	cd ${TRAEFIK_DIR}
	docker-compose build

.ONESHELL .PHONY: stop-traefik
stop-traefik:
	cd ${TRAEFIK_DIR}
	docker-compose stop

.ONESHELL .PHONY: build
build:
	cd ${SH_DIR}
	bash build.sh

.ONESHELL .PHONY: run
run:
	cd ${SH_DIR}
	bash run.sh

.ONESHELL .PHONY: stop
stop:
	cd ${SH_DIR}
	bash stop.sh
