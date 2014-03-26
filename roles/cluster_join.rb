name "cluster_join"
description "Recipe to join riak nodes to cluster."
run_list(
  "recipe[riak-cluster-join]"
)

default_attributes(
  "riak_cs" => {
    "config" => {
      "riak_cs" => {
        "admin_key" => "__string_ACCESSKEY",
        "admin_secret" => "__string_SECRETKEY",
        "stanchion_ip" => "__string_STANCHIONIP",
        "stanchion_port" => 8085
      }
    }
  },
  "riak_cluster_join" => {
    "node-head" => "HEAD NODES FQDN"
  }
)
