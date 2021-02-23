#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisor.conf
else
    exec "$@"
fi
