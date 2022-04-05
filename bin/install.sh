#!/usr/bin/env sh
set -e

if ! which terraform; then
    echo "terraform not found, please install it before continuing"
    exit 1
fi

echo 'cat etc/systemd/system/update-dns.service | sed 's?CURRENT_PATH?'`pwd`'?' > /etc/systemd/system/update-dns.service'
echo 'cat etc/systemd/system/update-dns.timer | sed 's?CURRENT_PATH?'`pwd`'?' > /etc/systemd/system/update-dns.timer'

echo 'systemctl enable update-dns.service'
echo 'systemctl enable update-dns.timer'