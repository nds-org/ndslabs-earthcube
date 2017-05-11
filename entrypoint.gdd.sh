#!/bin/bash

# Inject PostgreSQL credentials (or defaults)
/bin/sed -i -e "s#user: postgres_username#user: ${PG_USERNAME:-postgres_username}#" "credentials"
/bin/sed -i -e "s#port: 5432#port: ${PG_PORT:-5432}#" "credentials"
/bin/sed -i -e "s#host: localhost#host: ${PG_HOSTNAME:-localhost}#" "credentials"
/bin/sed -i -e "s#database: deepdive_app#database: ${PG_HOSTNAME:-deepdive_app}#" "credentials"
/bin/sed -i -e "s#password: password123#password: ${PG_PASSWORD:-password123}#" "credentials"

# Prepare local PG database with USGS data
make local_setup
