# # # context.tf

resource "spacelift_context" "debug" {
  description = "Debug congfiguration"
  name = "debug"
  space_id = "root"
}

resource "spacelift_context" "provider" {
  description = "Provider congfiguration"
  name = "provider"
  space_id = "root"
}

resource "spacelift_context" "config" {
  description = "Configuration"
  name = "config"
  space_id = "root"
}