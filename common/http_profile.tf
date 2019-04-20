resource "bigip_net_vlan" "vlan1" {
  name = "/Common/Sample"
  tag = 101
  interfaces = {
    vlanport = 1.3,
    tagged = false
  }
}