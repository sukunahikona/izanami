# README

## Railsプロジェクト初期化
```
pwd
# project root
docker-compose down
rm -rf ./src/*
cp -f ./resource/Gemfile ./src/
touch ./src/Gemfile.lock
docker-compose run web rails new . --force --database=postgresql
docker-compose build --no-cache
```

## DB初期化
```
pwd
# project root
cp -f ./resource/database.yml ./src/config/
docker-compose run web rails db:create
```
## WEB起動
```
pwd
# project root
docker-compose up

```

## Controller追加
```
docker-compose run web rails g controller user show
```
