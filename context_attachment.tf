# context_attachment.tf

data "spacelift_stack" "spacelift" {
  stack_id = "spacelift"
}

data "spacelift_context" "spacelift" {
  context_id = "spacelift"
}

resource "spacelift_context_attachment" "spacelift_spacelift" {
  context_id = data.spacelift_context.spacelift.id
  stack_id   = data.spacelift_stack.spacelift.id
  priority   = 0
}
