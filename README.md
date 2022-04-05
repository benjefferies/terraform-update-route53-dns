# Terraform update route53 DNS

A Terraform module to update route53 DNS records and a systemd timer to run it regularly. This can be useful if you have a dynamic IP address but want a domain to resolve it.

## Installing
1. Clone the repo
2. Install terraform
3. Set AWS Credentials in .env
4. Run `./bin/install.sh

## Verify installation
1. systemctl status update-dns.service
2. systemctl status update-dns.timer
3. tail -f /var/log/syslog


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.a_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_record_domain"></a> [a\_record\_domain](#input\_a\_record\_domain) | The A record to assoicate with the IP address | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain to manage as a zone record. | `string` | n/a | yes |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IP address to set the A record to. You should automatically detect this with a tool like `curl ifconfig.co`. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain"></a> [domain](#output\_domain) | The domain that has been set for the A record. |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | The IP address that has been set for the A record. |
