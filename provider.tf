provider "bigip" {
  address = "${var.F5_URL}"
  password = "${var.F5_PASSWORD}"
  username = "${var.F5_USERNAME}"
}