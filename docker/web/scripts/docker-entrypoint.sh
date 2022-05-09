#!/bin/bash

source=/app
node_modules=/app/node_modules
while :
do
    if [ ! -z "$(ls -A ${source})" ]; then
        if [ ! \( -e "${node_modules}" \) ]; then
            cd ${source} && yarn
            break
        fi
        break
    fi
done

exec "$@"