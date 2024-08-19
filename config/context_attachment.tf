# context_attachment.tf

resource "spacelift_context_attachment" "debug_proxmox_infra" {
  count      = (try(data.spacelift_context.debug.id, null) != null && data.spacelift_stack.proxmox_infra.id != null) ? 1 : 0
  context_id = try(data.spacelift_context.debug.id, "")
  stack_id   = data.spacelift_stack.proxmox_infra.id
  priority   = 0
}

resource "spacelift_context_attachment" "provider_proxmox_infra" {
  count      = (try(data.spacelift_context.provider.id, null) != null && data.spacelift_stack.proxmox_infra.id != null) ? 1 : 0
  context_id = try(data.spacelift_context.provider.id, "")
  stack_id   = data.spacelift_stack.proxmox_infra.id
  priority   = 0
}