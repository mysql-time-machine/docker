USAGE:
======

1. ./run_all
2. ./attach_to_replicator
3. cd /replicator
4. ./random_mysql_ops
5. ./run_hbase
6. connect to hbase shell and verify data

HBASE
============
Shell:
docker container exec -it replicatorhbase_hbase_1 bash
/hbase/bin/hbase shell

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

INTEGRATION TESTS:
=================
There is 1st integration test present.
It is located in test_1 directory
it can be run with command:
```
./run_test test_1
```
It is draft-quality so far but introduces some ideas which can be used for future tests

GRAPHITE:
=========
Access in browser at http://localhost/dashboard/

ZOOKEEPER
================
Should just be there and work.
