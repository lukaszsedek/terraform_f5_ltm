

module "app1_pool" {
  source = "../common/pools"

  pool_name = "${local.app1_pool_name}"
}

/*module "app1_node1" {
  source = "../common/nodes"

  node_address = "10.200.1.1"
  node_name = "/Common/Node1_app1"
}*/

module "app1_virtual_address" {
  source = "../common/virtual_server"

  vip_address = "${local.app1_vip_address}"
  vip_name = "${local.app1_vip_name}"
  pool_name = "${local.app1_pool_name}"

  depends_on =[ "${module.app1_pool}"]
}