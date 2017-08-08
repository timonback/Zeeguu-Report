#!/bin/bash

USER=root
PWD=root
DATABASE=zeeguu_live

echo "Reset database"
echo "DROP DATABASE $DATABASE;" | mysql -u $USER -p$PWD
echo "CREATE DATABASE $DATABASE;" | mysql -u $USER -p$PWD

CMD="mysql -u $USER -p$PWD $DATABASE"

echo "Import database dump"
$CMD < zeeguu_2017-06-12.sql
