#!/bin/bash

ENDPOINT_URL=$1

until curl -sf ${ENDPOINT_URL} > /dev/null
  do sleep 1 && echo -n . 
done 
