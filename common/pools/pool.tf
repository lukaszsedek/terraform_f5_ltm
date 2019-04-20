resource "bigip_ltm_pool" "pool1" {
  name = "${var.pool_name}"
  load_balancing_mode = "round-robin"
  allow_snat = "yes"
  allow_nat = "yes"
}