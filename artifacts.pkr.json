variable "linode_api_token" {
  type    = string
  default = ""
}

source "linode" "example" {
  image             = "linode/debian10"
  image_description = "This image was created using Packer."
  image_label       = "packer-debian-10"
  instance_label    = "temp-packer-debian-10"
  instance_type     = "g6-nanode-1"
  linode_token      = "${var.linode_api_token}"
  region            = "us-east"
  ssh_username      = "root"
}

build {
  sources = ["source.linode.example"]
}
