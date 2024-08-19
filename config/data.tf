data "spacelift_context" "debug" {
  context_id = "debug"
}

data "spacelift_context" "provider" {
  context_id = "provider"
}

data "spacelift_stack" "proxmox_infra" {
  stack_id = "proxmox_infra"
}

# data "spacelift_stacks" "stacks" {}

# output "stacks" {
#   value = data.spacelift_stacks.stacks
# }