name "self_cert"
description "Create self cert for riak-control"
run_list(
  "recipe[selfsigned_certificate]"
)
default_attributes(
  "selfsigned_certificate" => {
    "slpassphrase" => "demo",
    "email" => "admin@admin.com"
  }
)
