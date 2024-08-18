# context.tf

resource "spacelift_context" "provider" {
  description = "Provider congfiguration"
  name = "provider"
  space_id = "root"
}