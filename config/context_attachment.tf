# context_attachment.tf

data "spacelift_stacks" "all" {
  labels {
    any_of = ["all"]
  }
}

# data "spacelift_stacks" "proxmox" {
#   labels {
#     any_of = ["proxmox"]
#   }
# }

data "spacelift_stacks" "database" {
  labels {
    any_of = ["database"]
  }
}


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

resource "spacelift_context_attachment" "context_attachment_database_database" {
  for_each = {
    for stack in data.spacelift_stacks.database.stacks : stack.stack_id => stack
  }
  context_id = "database"
  stack_id   = each.value.stack_id
  priority   = 0
}