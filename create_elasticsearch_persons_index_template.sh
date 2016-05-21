#!/bin/bash


ES_HOST="$1"
if [ -z "$ES_HOST" ]; then ES_HOST="localhost"; fi
ES_PORT="$2"
if [ -z "$ES_PORT" ]; then ES_PORT="9200"; fi

ES_URL="http://${ES_HOST}:${ES_PORT}"

# ES template to create
ES_TEMPLATE="persons"

# mapping for this index
TEMPLATE_FILE="../bigDataRocks/common/src/main/resources/bigdatarocks/common/configuration/elasticsearch_persons_index_template.json"
if [ -f "$TEMPLATE_FILE" ]; then
    echo
    echo "$(date '+%F %H:%M:%S') INFO: BEGIN creating template $ES_TEMPLATE and applying template file $TEMPLATE_FILE"
    curl -XPUT "${ES_URL}/_template/${ES_TEMPLATE}" -d @$TEMPLATE_FILE
    echo
    echo " $(date '+%F %H:%M:%S') INFO: END"
else
    echo "$(date '+%F %H:%M:%S') ERROR: file $TEMPLATE_FILE not found"
fi


