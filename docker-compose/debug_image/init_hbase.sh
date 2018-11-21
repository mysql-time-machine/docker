#hbase preparation                                                                                                                                        
docker exec $1 sh -c "echo -e \"create_namespace 'replicator_test'\" | /hbase/bin/hbase shell -n"                                               
docker exec $1 sh -c "echo -e \"create_namespace 'schema_history'\" | /hbase/bin/hbase shell -n"
 
