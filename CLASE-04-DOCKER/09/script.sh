#!/bin/bash

git clone https://github.com/wodby/docker4drupal.git
cd docker4drupal
docker compose up -d
docker ps