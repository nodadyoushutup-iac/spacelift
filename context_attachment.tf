# # context_attachment.tf

data "spacelift_stack" "proxmox_infra" {
  stack_id = "proxmox_infra"
}

data "spacelift_context" "provider" {
  context_id = "provider"
}

# resource "spacelift_context_attachment" "spacelift_spacelift" {
#   context_id = data.spacelift_context.spacelift.name
#   stack_id   = data.spacelift_stack.spacelift.name
#   priority   = 0
# }


output "spacelift_stack" {
  value = data.spacelift_context.spacelift
}

output "spacelift_context" {
  value = data.spacelift_stack.proxmox_infra
}