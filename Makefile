compose = docker-compose -f

alpine-single = docker-compose.alpine-single.yml
alpine = docker-compose.alpine.yml
buster-single = docker-compose.buster-single.yml
buster = docker-compose.buster.yml
distroless = docker-compose.distroless.yml
distroless-min = docker-compose.distroless-min.yml

build-alpine-single:
	${compose} ${alpine-single} build

start-alpine-single:
	${compose} ${alpine-single} up

stop-alpine-single:
	${compose} ${alpine-single} down

build-alpine:
	${compose} ${alpine} build

start-alpine:
	${compose} ${alpine} up

stop-alpine:
	${compose} ${alpine} down

build-buster-single:
	${compose} ${buster-single} build

start-buster-single:
	${compose} ${buster-single} up

stop-buster-single:
	${compose} ${buster-single} down

build-buster:
	${compose} ${buster} build

start-buster:
	${compose} ${buster} up

stop-buster:
	${compose} ${buster} down

build-distroless:
	${compose} ${distroless} build

start-distroless:
	${compose} ${distroless} up

stop-distroless:
	${compose} ${distroless} down

build-distroless-min:
	${compose} ${distroless-min} build

start-distroless-min:
	${compose} ${distroless-min} up

stop-distroless-min:
	${compose} ${distroless-min} down

build-all: build-alpine-single build-alpine build-buster-single build-buster build-distroless build-distroless-min