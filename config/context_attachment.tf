# context_attachment.tf

data "spacelift_stacks" "stacks" {
  labels {
    any_of = ["all"]
  }
}

output "stacks" {
  value = data.spacelift_stacks.stacks.stacks
}

resource "spacelift_context_attachment" "context_attachment_debug" {
  for_each = {
    for stack in data.spacelift_stacks.stacks.stacks : stack.stack_id => stack
  }

  context_id = "debug"
  stack_id   = each.value.stack_id
  priority   = 0
}