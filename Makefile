THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell
help:
	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
build:
	docker-compose -f docker-compose.yml build $(c)
up:
	docker-compose -f docker-compose.yml up -d $(c)
start:
	docker-compose -f docker-compose.yml start $(c)
pause:
	docker-compose -f docker-compose.yml pause $(c)
unpause:
	docker-compose -f docker-compose.yml unpause $(c)
down:
	docker-compose -f docker-compose.yml down $(c)
destroy:
	docker-compose -f docker-compose.yml down -v $(c)
stop:
	docker-compose -f docker-compose.yml stop $(c)
restart:
	docker-compose -f docker-compose.yml stop $(c)
	docker-compose -f docker-compose.yml up -d $(c)
logs:
	docker-compose -f docker-compose.yml logs --tail=100 -f $(c)
logs-default:
	docker-compose -f docker-compose.yml logs --tail=100 -f default
logs-frontend:
	docker-compose -f docker-compose.yml logs --tail=100 -f frontend
logs-admin:
	docker-compose -f docker-compose.yml logs --tail=100 -f admin
logs-other:
	docker-compose -f docker-compose.yml logs --tail=100 -f other
logs-auth:
	docker-compose -f docker-compose.yml logs --tail=100 -f auth
logs-study:
	docker-compose -f docker-compose.yml logs --tail=100 -f study
logs-users:
	docker-compose -f docker-compose.yml logs --tail=100 -f users
logs-extra:
	docker-compose -f docker-compose.yml logs --tail=100 -f extra
logs-processes:
	docker-compose -f docker-compose.yml logs --tail=100 -f processes
ps:
	docker-compose -f docker-compose.yml ps
login-default:
	docker-compose -f docker-compose.yml exec default sh
login-frontend:
	docker-compose -f docker-compose.yml exec frontend sh
login-admin:
	docker-compose -f docker-compose.yml exec admin sh
login-other:
	docker-compose -f docker-compose.yml exec other sh
login-auth:
	docker-compose -f docker-compose.yml exec auth sh
login-study:
	docker-compose -f docker-compose.yml exec study sh
login-users:
	docker-compose -f docker-compose.yml exec users sh
login-extra:
	docker-compose -f docker-compose.yml exec extra sh
login-processes:
	docker-compose -f docker-compose.yml exec processes sh
app-frontend-dev:
	docker container exec -d frontend npm run dev
app-frontend-build:
	docker container exec -d frontend npm run build
app-frontend-start:
	docker container exec -d frontend npm run start
#app-frontend-generate:
#	docker container exec -d frontend npm run generate

#db-shell:
#	docker-compose -f docker-compose.yml exec timescale psql #-Upostgres


