# Terraform Module apt update+upgrade

Terraform module which updates and upgrades apt packages by [Terraform Provider for (Operating) System](https://registry.terraform.io/providers/neuspaces/system).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [system_command.apt_autoremove](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.apt_update](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.apt_upgrade](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_remove"></a> [auto\_remove](#input\_auto\_remove) | if `apt autoremove` should be done | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
