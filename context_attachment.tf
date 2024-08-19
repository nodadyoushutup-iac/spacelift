# context_attachment.tf

resource "spacelift_context_attachment" "spacelift_spacelift" {
  context_id = spacelift_context.spacelift.id
  stack_id   = spacelift_stack.spacelift.id
  priority   = 0
}
