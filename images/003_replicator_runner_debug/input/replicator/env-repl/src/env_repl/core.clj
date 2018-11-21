(ns env-repl.core
  (:gen-class))

(require '[clojure.java.jdbc :as sql])
(require '[cbass :refer [new-connection store find-by scan delete pack-un-pack]])
(require '[clojure.pprint :refer [pprint]] )

(def hbase-conf {
                  "hbase.zookeeper.quorum" "hbase:2181"
                  "zookeeper.session.timeout" 30000
                })

(pack-un-pack {:p identity :u identity})

(def conn (new-connection hbase-conf))

(def mysql {
    :subprotocol "mysql"
    :subname     "//mysql:3306/test"
    :user        "root"
    :password    "mysqlPass"})

(defn -main
  []
  (sql/query mysql
    ["SHOW tables"]
    {:row-fn println})
  (pprint (scan conn "test:sometable"
                       :with-ts? true
                       :row-key-fn #(keyword (String. %)))))
