#!/bin/bash

export NODE_ENV=dev
export PORT=8901
export DATABASE_CONNECTION="test:password@ds041563.mongolab.com:41563/patchapps_db"
export GOOGLE_CLIENTID=""
export GOOGLE_CLIENT_SECRET=""
export GOOGLE_CALLBACK_URL=""


node web/server.js
