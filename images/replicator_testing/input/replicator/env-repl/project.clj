(defproject env-repl "0.1.0-SNAPSHOT"
    :description "FIXME: write description"
    :url "http://example.com/FIXME"
    :license {:name "Eclipse Public License"
                          :url "http://www.eclipse.org/legal/epl-v10.html"}
    :dependencies [[org.clojure/clojure "1.7.0"]
                   [org.clojure/java.jdbc "0.7.5"]
                   [mysql/mysql-connector-java "5.1.6"]
                   [cbass "0.1.5"]]
    :main ^:skip-aot env-repl.core
    :target-path "target/%s"
    :profiles {:uberjar {:aot :all}})
