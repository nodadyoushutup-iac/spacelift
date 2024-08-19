# context_attachment.tf

resource "spacelift_context_attachment" "debug_proxmox_infra" {
  context_id = data.spacelift_context.debug.id
  stack_id   = data.spacelift_stack.proxmox_infra.id
  priority   = 0
}

resource "spacelift_context_attachment" "provider_proxmox_infra" {
  context_id = data.spacelift_context.provider.id
  stack_id   = data.spacelift_stack.proxmox_infra.id
  priority   = 0
}