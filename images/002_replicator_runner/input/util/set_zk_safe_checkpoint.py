from kazoo.client import KazooClient
import logging
logging.basicConfig()

zk = KazooClient(hosts='zookeeper:2181')
zk.start()

data = """{"checkpointType":1,"slaveId":1,"lastVerifiedBinlogPosition":4,"lastVerifiedBinlogFileName":"binlog.000001", "pseudoGTID": null}"""

zk_path = "/kafka/replicator/test_kafka/checkpoint"

zk.set(zk_path, data)
