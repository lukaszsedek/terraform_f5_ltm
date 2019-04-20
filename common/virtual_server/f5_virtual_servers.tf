resource "bigip_ltm_virtual_server" "vip1" {
  destination = "${var.vip_address}"
  name = "${var.vip_name}"
  port = 443
  source_address_translation = "automap"
  pool = "${var.pool_name}"
}