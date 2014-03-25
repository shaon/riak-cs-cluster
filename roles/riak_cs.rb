name "riak_cs"
description "Role for Riak CS nodes."
run_list(
  "recipe[riak-cs]"
)
default_attributes(
  "riak_cs" => {
    "args" => {
      "+S" => 1
    },
    "config" => {
      "riak_cs" => {
        "anonymous_user_creation" => true,
        "fold_objects_for_list_keys" => true
      }
    }
  }
)
