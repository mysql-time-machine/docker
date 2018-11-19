USAGE:
======

1. ./run_all

2. ./init_hbase

3. ./attach_to_replicator

4. cd /replicator

5. ./00_setup

6. ./01_seed_mysql

7. ./02_run_016


MYSQL CONFIG
============
mysql is provided with custom my.cnf, so binlogs have been activated:

    volume => "./my.cnf:/etc/mysql/conf.d/my.cnf:ro"

databases in mysql have been precreated by the mysql-init-dbs.sh script:

    volume => ./my.cnf:/etc/mysql/conf.d/my.cnf:ro


REPLICATOR CONFIG
=================
replicator.conf:

    => available at /replicator/replicator.conf

log4j.properties:

    => available at /replicator/log4j.properties

mysql-client and perl are available

mysql container is visible under the hostname 'mysql':

    mysql --host=mysql --user=root --password=mysqlPass

    mysql> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    | test               |
    | test_active_schema |
    +--------------------+
    6 rows in set (0.00 sec)

GRAPHITE:
=========
Access in browser at http://localhost/dashboard/

KAFKA, HBASE, ZOOKEEPER
=======================
Should just be there and work.
