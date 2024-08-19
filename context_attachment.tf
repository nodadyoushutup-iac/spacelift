# context_attachment.tf

data "spacelift_contexts" "spacelift" {
  labels {
    any_of = ["spacelift"]
  }
}

data "spacelift_stack" "spacelift" {
  stack_id = "spacelift"
}


resource "spacelift_context_attachment" "spacelift_spacelift" {
  context_id = data.spacelift_context.contexts.context_id.spacelift.id
  stack_id   = data.spacelift_stack.spacelift.id
  priority   = 0
}
