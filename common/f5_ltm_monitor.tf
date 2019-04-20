resource "bigip_ltm_monitor" "monitor" {
  name = "/Common/terraform_monitor"
  parent = "/Common/http"
  send = "GET /some/path\r\n"
  timeout = "999"
  interval = "999"
  destination = "1.2.3.4:1234"
}