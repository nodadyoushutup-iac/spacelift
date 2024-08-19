# context_attachment.tf

data "spacelift_stacks" "stacks" {}

output "stacks" {
  value = data.spacelift_stacks.stacks
}

resource "spacelift_context_attachment" "context_attachment_debug" {
  for_each = { for stack in data.spacelift_stacks.stacks : stack.stack_id => stack }

  context_id = "debug"
  stack_id   = each.key
  priority   = 0
}