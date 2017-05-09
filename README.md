# Dockerfile для сборки PostgreSQL, адаптированного для 1С.
https://hub.docker.com/r/rsyuzyov/postgresql-pro-1c/

Сделано на основе замечательных [sameersbn/docker-postgresql](https://github.com/sameersbn/docker-postgresql)
и [Postgres Professional](https://postgrespro.ru/products/1c_build)

Отличия от родительского проекта:
- базовый образ ubuntu заменен с trusty на xenial
- локаль ru_RU.UTF-8
- версия PG берется из 1c.postgrespro.ru

# Использование
Под linux (bash):
```bash
docker volume create --name pg-data
docker volume create --name pg-run
docker run --name postgresql --restart always \
 -v pg-data:/var/lib/postgresql -v pg-run:/run/postgresql \
 --net host -p 5432:5432 \
 -d rsyuzyov/postgresql-pro-1c
```

Под windows (powershell):
```bash
docker volume create --name pg-data
docker volume create --name pg-run
docker run --name postgresql --restart always `
 -v pg-data:/var/lib/postgresql -v pg-run:/run/postgresql `
 --net host -p 5432:5432 `
 -d rsyuzyov/postgresql-pro-1c
```

# Ссылки

Подробное описание, а также инструкции на все случаи жизни смотрим в [sameersbn/docker-postgresql](https://github.com/sameersbn/docker-postgresql)

В учебных целях, в том числе для ознакомления с инструментарием управления и обслуживания postgres очень рекомендуется посмотреть [сюда](https://github.com/VanessaDockers/pgsteroids).

Другие докер-файлы PostgreSQL для 1С:
- https://github.com/temrdm/1c-postgres
- https://github.com/winsento/1c-postgres

Докер-файлы сервера 1С:
- https://github.com/temrdm/1c_server
- https://github.com/andruccho/1c_server

