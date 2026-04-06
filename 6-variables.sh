#!/bin/bash

START_TIME=$(date +%s)

echo "Script executed at: $TIMESTAMP"

sleep 10

END_TIME=$(date +%s)
echo "Script end Time: $END_TIME"

TOTAL_TIME=$((END_TIME-$START_TIME))

echo "Total time of script execution: $TOTAL_TIME"