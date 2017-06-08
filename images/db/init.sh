#!/bin/bash
set -e

# Set up your databases here
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL

EOSQL
