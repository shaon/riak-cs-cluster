riak-cs-cluster
===============

roles for setting up multiple Riak CS nodes

### Usage

#### Install the head node:
```
knife bootstrap a.b.c.d -x root -r 'role[base], role[riak], role[riak_cs], role[stanchion], recipe[riak-cs::control], recipe[riak-cs-create-admin-user]'
```

#### Install rest of the nodes and join to the head node

**NOTE:** update the ``cluster_join.rb`` role.

```
knife bootstrap a.b.c.d -x root -r 'role[base], role[riak], role[riak_cs], role[cluster_join]'
```
