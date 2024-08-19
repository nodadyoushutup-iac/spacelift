# context_attachment.tf

resource "spacelift_context_attachment" "context_attachment_debug" {
  for_each = data.spacelift_stacks.stacks.stack_id
  context_id = "debug"
  stack_id   = each.value
  priority   = 0
}