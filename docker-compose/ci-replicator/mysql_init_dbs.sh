#!/bin/bash
mysql -uroot -pmysqlPass <<EOF
create database test;
create database test_active_schema;
EOF

