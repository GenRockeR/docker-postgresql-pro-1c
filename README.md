# Dockerfile для сборки PostgreSQL, адаптированного для 1С.

Сделано на основе замечательных [sameersbn/docker-postgresql](https://github.com/sameersbn/docker-postgresql)
и дистрибутивов от [Postgres Professional](https://postgrespro.ru/products/1c_build)

Отличия от родительского проекта:
- базовый образ ubuntu заменен с trusty на xenial
- локаль ru_RU.UTF-8
- версия PG берется из 1c.postgrespro.ru

Образ планируется к использованию в том числе и для продуктивного контура.


# Использование

```bash
docker volume create --name=pg-data
docker volume create --name=pg-run
docker run --name postgresql --restart always \
 -v pg-data:/var/lib/postgresql -v pg-run:/run/postgresql \
 -p 5432:5432 -d rsyuzyov/postgresql-pro-1c:9.6-2`
```

# Дополнительно

Подробное описание, а также инструкции на все случаи жизни смотрим в [sameersbn/docker-postgresql](https://github.com/sameersbn/docker-postgresql)

В учебных целях очень рекомендуется посмотреть [сюда](https://github.com/VanessaDockers/pgsteroids).


