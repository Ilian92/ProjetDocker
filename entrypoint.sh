#!/bin/sh

composer install --no-interaction

npm install
npm run build

php artisan migrate

php-fpm