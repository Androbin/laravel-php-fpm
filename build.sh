#!/bin/bash
if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi
if [ $tag != 'latest' ]
then
  echo 'Build from from tag'
  docker build -f src/docker/${tag}/Dockerfile -t jkaninda/laravel-php-fpm:$tag .
else
 echo 'Build latest'
 docker build -f src/docker/8.3/Dockerfile -t jkaninda/laravel-php-fpm:$tag .
 
fi

