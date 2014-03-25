name "riak"
description "Role for Riak Enterprise nodes."
run_list(
  "recipe[riak-cs::package]",
  "recipe[riak]",
  "recipe[sysctl]"
)
default_attributes(
  "riak" => {
    "cs_version" => "1.4.5",
    "args" => {
      "+zdbbl" => 96000,
      "-env" => {
        "ERL_MAX_PORTS" => 16384
      }
    },
    "config" => {
      "riak_api" => {
        "pb_backlog" => 128
      },
      "riak_core" => {
        "default_bucket_props" => [["__tuple", "allow_mult", true]],
        "userlist" => [["__tuple", "admin", "password"]]
      },
      "riak_control" => {
        "enabled" => true,
        "auth" => "none"
      },
      "riak_kv" => {
        "storage_backend" => "riak_cs_kv_multi_backend"
      }
    }
  },
  "sysctl" => {
    "params" => {
      "net.core.wmem_default" => "8388608",
      "net.core.rmem_default" => "8388608",
      "net.core.wmem_max" => "8388608",
      "net.core.rmem_max" => "8388608",
      "net.core.netdev_max_backlog" => "10000"
    }
  }
)
