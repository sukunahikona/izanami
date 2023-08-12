# README

## Railsプロジェクト初期化
```
pwd
# project root
docker-compose down
rm -rf ./src/*
cp -f ./resource/Gemfile ./src/
touch ./src/Gemfile.lock
docker-compose run web rails new . --force --database=postgresql --javascript=importmap
# add bootstrap
docker-compose run web bundle add bootstrap mini_racer
mv src/app/assets/stylesheets/application.{css,scss}
echo '@import "bootstrap";' >> src/app/assets/stylesheets/application.scss
echo 'Rails.application.config.assets.precompile += %w(bootstrap.min.js popper.js)' >> src/config/initializers/assets.rb
docker-compose run web /izanami/bin/importmap pin jquery
docker-compose run web /izanami/bin/importmap pin bootstrap
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
docker-compose run web rails g controller dashboard show
```

## Table追加(mygration)
```
docker-compose run web rails g model User
# 以下修正
# src/db/migrate/[自動生成ファイル]
# 反映
docker-compose run web rails db:migrate
# 作り直す場合
# railsは一旦migrationした場合、バージョンを戻して再実行する必要がある
docker-compose run web rails db:migrate:redo
```
