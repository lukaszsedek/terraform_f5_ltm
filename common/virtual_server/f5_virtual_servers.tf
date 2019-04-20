resource "bigip_ltm_virtual_server" "vip1" {
  destination = "10.2.1.33"
  name = "/Common/VIP1"
  port = 443
  pool = "${bigip_ltm_pool.pool1.name}"
}