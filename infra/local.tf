# local.tf

locals {
  spacelift = yamldecode(file("/mnt/workspace/spacelift.yaml"))
  config = try(yamldecode(file("/mnt/workspace/config.yaml")), yamldecode(file("/mnt/workspace/config.yml")))
}