#!/usr/bin/env sh
set -e

terraform init
terraform apply -var ip_address=$(curl ifconfig.co) -auto-approve