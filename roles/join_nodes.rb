name "join_nodes"
description "Recipe to join riak nodes."
run_list(
  "recipe[riak-join-nodes]"
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
  "riak_join" => {
    "node-head" => "__string_STANCHIONIP"
  }
)
