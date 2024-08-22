resource "spacelift_context" "config" {
  description = "Configuration"
  name = "config"
  space_id = "root"
}

resource "spacelift_context_attachment" "config_spacelift" {
  context_id = "config"
  stack_id   = "spacelift"
  priority   = 0
  depends_on = [spacelift_context.config]
}