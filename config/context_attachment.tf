# context_attachment.tf

resource "spacelift_context_attachment" "debug_proxmox_infra" {
  context_id = "debug"
  stack_id   = "proxmox_infra"
  priority   = 0
}

resource "spacelift_context_attachment" "provider_proxmox_infra" {
  context_id = "provider"
  stack_id   = "proxmox_infra"
  priority   = 0
}