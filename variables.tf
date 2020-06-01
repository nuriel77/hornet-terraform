# Can set via 'export TF_VAR_hcloud_token="api_token_123"'
variable "hcloud_token" {}

variable "vps_count" {
  default = 1
  description = "Number of servers to spawn"
}

variable "vps_location" {
  default = "fsn1"
  description = "Location"
}

variable "vps_image" {
  default = "ubuntu-20.04"
  description = "VPS OS Image"
}

variable "vps_type" {
  default = "cx21"
  description = "VPS Type"
}

variable "vps_ssh_key" {
  type = list
  default = ["nuriel"]
  description = "VPS SSH access key"
}
