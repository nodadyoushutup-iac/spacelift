# # context.tf


resource "spacelift_context" "provider" {
  description = "Provider congfiguration"
  name = "provider"
  space_id = "root"
}

resource "spacelift_context" "spacelift" {
  description = "Spacelift configuration"
  name = "spacelift"
  space_id = data.spacelift_space.infra.id
}

resource "spacelift_context" "virtual_machine" {
  description = "Virtual Machine congfiguration"
  name = "virtual_machine"
  space_id = data.spacelift_space.infra.id
}