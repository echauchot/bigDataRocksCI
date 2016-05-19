#!/bin/bash


ES_HOST="$3"
if [ -z "$ES_HOST" ]; then ES_HOST="localhost"; fi
ES_PORT="$4"
if [ -z "$ES_PORT" ]; then ES_PORT="9200"; fi

ES_URL="http://${ES_HOST}:${ES_PORT}"

# ES template to create
ES_TEMPLATE="$1"

# mapping for this index
TEMPLATE_FILE="$2"
if [ -f "$TEMPLATE_FILE" ]; then
    echo
    echo "$(date '+%F %H:%M:%S') INFO: BEGIN creating template $ES_TEMPLATE and applying template file $TEMPLATE_FILE"
    curl -XPUT "${ES_URL}/_template/${ES_TEMPLATE}" -d @$TEMPLATE_FILE
    echo
    echo " $(date '+%F %H:%M:%S') INFO: END"
else
    echo "$(date '+%F %H:%M:%S') ERROR: file $TEMPLATE_FILE not found"
fi


