#!/bin/bash

docker create -p 50051:50051 --name brewery1 brewery
docker create -p 50000:50000 -e "NETWORK=brewery1" --name dispatch1 dispatch
docker create -p 8088:80 --name findbrewery1 findbrewery

