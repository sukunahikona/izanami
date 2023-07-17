#!/bin/bash
set -e

echo 'entrypoint start'
rm -f /izanami/tmp/pids/server.pid
echo 'entrypoint end'
exec "$@"
