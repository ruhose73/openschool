ВНИМАНИЕ!!! Проект временно сломан в связи с глобальным изменением его структуры. Скоро всё поправим.

# OpenSchool

**OpenSchool - бесплатная и открытая образовательная платформа, которая ставит своей целью быть центральным инструментом в процессе обучения на любые темы.**
[Читать подробнее>>](https://grandcore.org/#/ru/openschool)

- [Основной чат проекта](https://t.me/openschool_chat)
- [Чат программистов](https://t.me/joinchat/CdXoy9PeAjI2NTJh)
- [Чат дизайнеров](https://t.me/joinchat/2JC3zklOvggxN2Jh)

## Запуск на локальной машине

Для сборки и запуска проекта необходимо установить [docker](https://www.docker.com/https://www.docker.com/get-started) и [docker-compose](https://docs.docker.com/compose/install/). Также необходимо запустить [docker daemon](https://docs.docker.com/config/daemon/), если он не запущен.

Для построения и запуска проекта создан _Makefile_. Для пользователей Windows необходимо произвести [дополнительную настройку](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows)

**Примечания**

- Архитектура проекта описывается и обсуждается в [Trello](https://trello.com/b/POeLUekC)
- Все контейнеры находятся в одной сети network

### Список приложений

_Если сборка прошла успешно и все контейнеры запущены, то по следующим адресам доступны приложения:_

- router ([localhost:3000](http://localhost:3000)) - точка входа. Роутер Nginx;
- api-auth ([localhost:3100](http://localhost:3100)) - Авторизация, которая может работать в том числе в других проектах.
- api-content ([localhost:3200](http://localhost:3200)) - разделы с контентом для совместного редактирования сообществом;
- api-users ([localhost:3300](http://localhost:3300)) - Управление пользователями и группами, в том числе управление прогрессом пользователя в обучении;
- api-extra ([localhost:3400](http://localhost:3400)) - Агрегация и управление логами со всех приложений и другими мета-данными;
- api-stuff ([localhost:3500](http://localhost:3500)) - всё связанное с курсами и процессом обучения пользователей. Прогрессом пользователя занимается приложение users;

- frontend (контейнер front-public) ([localhost:5000](http://localhost:5000)) - Отрисовка всего фронта, кроме админки и процессов. На текущей момент выводит html файл со всеми ссылками на все приложения. 
- processes (контейнер front-processes) ([localhost:6000](http://localhost:6000)) - Процессы фронта;
- admin (контейнер front-admin) ([localhost:5200](http://localhost:5100)) - Административная панель фронта.

_Все приложения также доступны по следующим адресам:_
- [localhost:3000/api/api-name](localhost:3000/api/api-name)
- [localhost:3000](localhost:3000) - frontend
- [localhost:3000/admin](localhost:3000/admin) - frontadmin
- [localhost:3000/processes](localhost:3000/processes) - front-processes

Приложения находятся в одной сети. Изнутри любого контейнера их можно перекрёстно пропинговать по названию приложения. Например: `ping admin`.


### Команды make
Все make команды устроены следующим образом: `make [command_name]` для взаимодействия сразу со всеми контейнерами. Если необходимо работать только с одним конкретным контейнером, то необходимо использовать параметр `c`: `make [command_name] с=[container_name]`.
### Команды запуска

- `make build` - сборка всей сети контейнеров без последующего поднятия;
- `make up` - поднять сеть и все контейнеры;

### Команды управления состоянием

- `make pause` - приостановить выполнение всех контейнеров с сохранением их состояния;
- `make unpase` - возобновить выполнение всех контейнеров, если они были приостановлены;
- `make stop` - остановка всех контейнеров;
- `make down` - остановка всех контейнеров с последующим удалением;
- `make restart` - перезапуск всех контейнеров;
- `make destroy` - остановка всех контейнеров с удалением контейнеров, volumes и сети;

### Команды контроля и обслуживания

- `make logs` - подключиться к выводу логов с контейнера конкретного приложения (см. список выше);
- `make ps` - вывести список и статус работающих контейнеров только из тех, которые определены в _docker-compose.yml_;
- `make login` - подключиться к терминалу контейнера конкретного приложения (см. список выше). Данную команду необходимо использовать только с параметром `c`, который задает имя контейнера.

### Запуск без Makefile

- `docker-compose up --build - Собрать и запустить`

### Переменные среды

Переменные среды каждого контейнера находятся в папке _`envs`_. Название каждого файла соответствует названию контейнера: _container_name-variables.env_.
В каждой папке сервиса находится `Dockerfile` в котором определены основные настройки каждого контейнера.




### Базы данных (пока не реализованы)

- storage - 4000
- db-auth - 4100
- db-content - 4200
- db-users - 4300
- db-extra - 4400
- db-stuff - 4500

