#!/bin/sh
DIR=$( cd "$(dirname "$0")" ; pwd -P )
. $DIR/env.sh
export ELASTICSEARCH_HOST=http://dwse-elasticsearch:9200
$SCRIPTDIR/elasticsearch_migrate.py


