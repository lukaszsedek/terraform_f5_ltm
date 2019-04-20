resource "bigip_ltm_node" "node" {
  name = "${var.node_name}"
  address = "${var.node_address}"
}