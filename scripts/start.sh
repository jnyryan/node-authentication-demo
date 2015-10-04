#!/bin/bash

export NODE_ENV=dev
export PORT=8901

export DATABASE_CONNECTION="test:password@ds041563.mongolab.com:41563/patchapps_db"
export GOOGLE_CLIENTID='your-secret-clientID-here', // your App ID
export GOOGLE_CLIENT_SECRET='your-client-secret-here', // your App Secret
export GOOGLE_CALLBACK_URL="http://localhost:8901/auth/google/callback"

export TWITTER_CLIENTID='your-secret-clientID-here', // your App ID
export TWITTER_CLIENT_SECRET='your-client-secret-here', // your App Secret
export TWITTER_CALLBACK_URL="http://localhost:8901/auth/twitter/callback"

node web/server.js
