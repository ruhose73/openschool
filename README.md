# OpenSchool

**OpenSchool - бесплатная и открытая образовательная платформа, которая ставит своей целью быть центральным инструментом в процессе обучения на любые темы.**
[Читать подробнее>>](https://grandcore.org/#/ru/openschool)

- [Основной чат проекта](https://t.me/openschool_chat)
- [Чат программистов](https://t.me/CdXoy9PeAjI2NTJh)
- [Чат дизайнеров](https://t.me/2JC3zklOvggxN2Jh)

## Запуск на локальной машине

Для сборки и запуска проекта необходимо установить [docker](https://www.docker.com/https://www.docker.com/get-started) и [docker-compose](https://docs.docker.com/compose/install/). Также необходимо запустить [docker daemon](https://docs.docker.com/config/daemon/), если он не запущен.

Для построения и запуска проекта создан *Makefile*. Для пользователей Windows необходимо произвести [дополнительную настройку](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows)

**Примечания**

- Архитектура проекта описывается и обсуждается в [Trello](https://trello.com/b/POeLUekC)
- Все контейнеры находятся в одной сети network

### Команды запуска

- `make build` - сборка всей сети контейнеров без последующего поднятия.
- `make up` - поднять сеть и все контейнеры.
- `make logs` - подключиться к выводу логов с каждого контейнера.

### Команды управления состоянием

- `make pause` - приостановить выполнение всех контейнеров с сохранением их состояния
- `make unpase` - возобновить выполнение всех контейнеров, если они были приостановлены
- `make stop` - остановка всех контейнеров
- `make down` - остановка всех контейнеров с последующим удалением
- `make restart` - перезапуск всех контейнеров
- `make destroy` - остановка всех контейнеров с удалением контейнеров и volumes

### Команды контроля и обслуживания

- `make logs-default` - подключиться к выводу логов с контейнера default
- `make logs-frontend` - подключиться к выводу логов с контейнера frontend
- `make logs-admin` - подключиться к выводу логов с контейнера admin
- `make logs-articles` - подключиться к выводу логов с контейнера articles
- `make logs-auth` - подключиться к выводу логов с контейнера auth
- `make logs-study` - подключиться к выводу логов с контейнера study
- `make logs-users` - подключиться к выводу логов с контейнера users
- `make ps` - вывести список и статус работающих контейнеров только из тех, которые определены в *docker-compose.yml*
- `make login-default` - подключиться к терминалу контейнера default
- `make login-frontend` - подключиться к терминалу контейнера frontend
- `make login-admin` - подключиться к терминалу контейнера admin
- `make login-articles` - подключиться к терминалу контейнера articles
- `make login-auth` - подключиться к терминалу контейнера auth
- `make login-study` - подключиться к терминалу контейнера study
- `make login-users` - подключиться к терминалу контейнера users

### Запуск без Makefile

- docker-compose up --build - Собрать и запустить

### Проверка работоспособности 

Если сборка прошла успешно и все контейнеры запущены, то по следующим адресам доступны страницы:

- [localhost:3000](localhost:3000) - default
- [localhost:5000](localhost:5000) - frontend
- [localhost:7000](localhost:7000) - admin
- [localhost:3100](localhost:3100) - study
- [localhost:3200](localhost:3200) - articles
- [localhost:4100](localhost:4100) - users
- [localhost:4200](localhost:4200) - auth


### Переменные среды

Переменные среды каждого контейнера находятся в папке *`envs`*. Название каждого файла соответствует названию контейнера: *container_name-variables.env*.
В каждой папке сервиса находится `Dockerfile` в котором определены основные настройки каждого контейнера.
