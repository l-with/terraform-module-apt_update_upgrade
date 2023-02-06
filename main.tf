data "system_command" "apt_update" {
  command = "apt update"
}

data "system_command" "apt_upgrade" {
  depends_on = [data.system_command.apt_update]
  command    = "apt ugrade"
  expect {
    exit_code = 100
  }
}

data "system_command" "apt_autoremove" {
  depends_on = [data.system_command.apt_upgrade]
  count      = var.auto_remove ? 1 : 0
  command    = "apt autoremove"
}
