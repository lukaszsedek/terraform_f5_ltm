
# POOL

module "app1_pool" {
  source = "../common/pools"

  pool_name = "${local.app1_pool_name}"
}

# NODES
module "app1_node1" {
  source = "../common/nodes"

  node_address = "${local.app1_node1_address}"
  node_name = "${local.app1_node1_name}"
}

module "app1_node2" {
  source = "../common/nodes"

  node_address = "${local.app1_node2_address}"
  node_name = "${local.app1_node2_name}"
}

module "app1_node3" {
  source = "../common/nodes"

  node_address = "${local.app1_node3_address}"
  node_name = "${local.app1_node3_name}"
}

# NODE to POOL binding
resource "bigip_ltm_pool_attachment" "node-pool-attach_app1_node1" {
  pool = "${local.app1_pool_name}"
  node = "${local.app1_node1_name}:80"
}

resource "bigip_ltm_pool_attachment" "node-pool-attach_app1_node2" {
  pool = "${local.app1_pool_name}"
  node = "${local.app1_node2_name}:80"
}

resource "bigip_ltm_pool_attachment" "node-pool-attach_app1_node3" {
  pool = "${local.app1_pool_name}"
  node = "${local.app1_node3_name}:80"
}

# VIP
module "app1_virtual_address" {
  source = "../common/virtual_server"

  vip_address = "${local.app1_vip_address}"
  vip_name = "${local.app1_vip_name}"
  pool_name = "${local.app1_pool_name}"
}