# context_attachment.tf

data "spacelift_context" "provider" {
  context_id = "provider"
}

data "spacelift_stack" "proxmox_infra" {
  stack_id = "proxmox_infra"
}

resource "spacelift_context_attachment" "spacelift_spacelift" {
  context_id = data.spacelift_context.provider.id
  stack_id   = data.spacelift_stack.proxmox_infra.id
  priority   = 0
}

output "spacelift_context" {
  value = data.spacelift_stack.proxmox_infra
}

output "spacelift_stack" {
  value = data.spacelift_context.spacelift
}
