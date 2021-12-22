#!/bin/bash
# entrypoint.sh
chmod 777 -R .
make re
exec "$@"
