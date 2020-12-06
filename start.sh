#!/bin/bash

docker start brewery1 
docker start dispatch1
docker start findbrewery1

docker network connect brewery_bridge brewery1
docker network connect brewery_bridge dispatch1
docker network connect brewery_bridge findbrewery1

