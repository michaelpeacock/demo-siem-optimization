#!/bin/bash

while read p; do
  echo "$p" | kafka-console-producer --bootstrap-server broker:29092 --topic duo
done < /var/spooldir/Duo.csv



