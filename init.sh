#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
data "cloudinit_config" "config" {
  part {
    content_type = "text/x-shellscript"
    public_key = file("${path.module}/id_rsa.pub")
  }
}
