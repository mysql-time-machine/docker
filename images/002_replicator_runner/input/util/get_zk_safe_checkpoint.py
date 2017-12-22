from kazoo.client import KazooClient
import logging
logging.basicConfig()

zk = KazooClient(hosts='zookeeper:2181')
zk.start()

zk_path = "/kafka/replicator/test_kafka/checkpoint"

if zk.exists(zk_path):
    data, stat = zk.get(zk_path)
    print(data)
