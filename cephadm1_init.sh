#!/bin/bash

# Install curl
sudo apt install -y curl

# Download cephadm
curl --silent --remote-name --location https://github.com/ceph/ceph/raw/pacific/src/cephadm/cephadm

# Make cephadm executable
chmod +x cephadm

# Add ceph pacific release repository
sudo ./cephadm add-repo --release pacific

# Install ceph pacific
sudo ./cephadm install
