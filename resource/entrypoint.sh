#!/bin/bash
set -e

echo 'entrypoint start'
echo ${RAILS_ENV}
rm -f /izanami/tmp/pids/server.pid
echo 'entrypoint end'
exec "$@"
