#!/usr/bin/env bash

containers=( "api:80" )

for CONTAINER in "${containers[@]}"; do
  until [[ "$(curl -s -o /dev/null http://$CONTAINER; echo $?)" =~ ^(0|56) ]]; do
    >&2 echo "Container \"$CONTAINER\" is unavailable - waiting..."
    sleep 30
  done
  >&2 echo "Container \"$CONTAINER\" is running"
done

>&2 echo "Application is up!!!"

containers=( "web:8080" )

for CONTAINER in "${containers[@]}"; do
  until [[ "$(curl -s -o /dev/null http://$CONTAINER; echo $?)" =~ ^(0|56) ]]; do
    >&2 echo "Container \"$CONTAINER\" is unavailable - waiting..."
    sleep 30
  done
  >&2 echo "Container \"$CONTAINER\" is running"
done

>&2 echo "Application is up!!!"

exec "$@"
