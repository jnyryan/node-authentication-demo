#!/bin/bash

export NODE_ENV=dev
export DATABASE_CONNECTION=mongodb://localhost:27017/patchapps
#export DATABASE_CONNECTION_2=mongodb://<user>:<pass>@localhost:27017/patchapps

node web/server.js
