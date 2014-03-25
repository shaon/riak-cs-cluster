name "join_nodes"
description "Recipe to join riak nodes."
run_list(
  "recipe[riak-join-nodes]"
)

