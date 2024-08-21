# local.tf

locals {
  spacelift = yamldecode(file("/mnt/workspace/spacelift.yaml"))
  config = yamldecode(file("/mnt/workspace/config.yaml"))
}