# context_attachment.tf

resource "spacelift_context_attachment" "context_attachment_debug_all" {
  for_each = {
    for stack in data.spacelift_stacks.all.stacks : stack.stack_id => stack
  }
  context_id = "debug"
  stack_id   = each.value.stack_id
  priority   = 0
}

resource "spacelift_context_attachment" "context_attachment_provider_all" {
  for_each = {
    for stack in data.spacelift_stacks.all.stacks : stack.stack_id => stack
  }
  context_id = "provider"
  stack_id   = each.value.stack_id
  priority   = 0
}

# resource "spacelift_context_attachment" "context_attachment_proxmox" {
#   for_each = {
#     for stack in data.spacelift_stacks.stacks.stacks : stack.stack_id => stack
#   }
#   context_id = "proxmox"
#   stack_id   = each.value.stack_id
#   priority   = 0
# }

resource "spacelift_context_attachment" "context_attachment_virtual_machine_virtual_machine" {
  for_each = {
    for stack in data.spacelift_stacks.database.stacks : stack.stack_id => stack
  }
  context_id = "virtual_machine"
  stack_id   = each.value.stack_id
  priority   = 0
}

resource "spacelift_context_attachment" "context_attachment_vault_vault" {
  for_each = {
    for stack in data.spacelift_stacks.vault.stacks : stack.stack_id => stack
  }
  context_id = "vault"
  stack_id   = each.value.stack_id
  priority   = 0
}