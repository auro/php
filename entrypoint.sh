#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Starting PHP Stack"
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisor.conf
fi
exec "$@"