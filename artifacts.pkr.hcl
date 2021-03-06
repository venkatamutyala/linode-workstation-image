variable "linode_api_token" {
  type    = string
  default = ""
}

source "linode" "example" {
  image             = "linode/ubuntu20.04"
  image_description = "This image was created using Packer."
  image_label       = "packer-ubuntu20.04"
  instance_label    = "temp-packer-ubuntu20.04"
  instance_type     = "g6-nanode-1"
  linode_token      = "${var.linode_api_token}"
  region            = "us-southeast"
  ssh_username      = "root"
}

build {
  sources = ["source.linode.example"]
  provisioner "shell" {
      inline = ["curl https://raw.githubusercontent.com/venkatamutyala/linode-workstation-image/main/setup.sh | bash"]
  }
}

