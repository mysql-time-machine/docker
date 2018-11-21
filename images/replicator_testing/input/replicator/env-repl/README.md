debug env intended to be used from repl with all dependencies preloaded.

Usage:

lein repl

(map #(clojure.pprint/pprint %)(scan conn "test:sometable" :with-ts? true :row-key-fn #(keyword (String. %))))

