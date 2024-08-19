# config/data.tf

data "spacelift_context" "debug" {
  context_id = "debug"
}

data "spacelift_context" "provider" {
  context_id = "provider"
}

data "spacelift_stack" "proxmox_infra" {
  stack_id = "proxmox_infra"
}