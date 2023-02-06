data "system_command" "apt_update" {
  command = "apt-get update -y"
}

data "system_command" "apt_upgrade" {
  depends_on = [data.system_command.apt_update]
  command    = "apt-get upgrade -y"
}

data "system_command" "apt_autoremove" {
  depends_on = [data.system_command.apt_upgrade]
  count      = var.auto_remove ? 1 : 0
  command    = "apt-get autoremove -y"
}
