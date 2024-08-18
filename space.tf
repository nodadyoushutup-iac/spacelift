# space.tf

resource "spacelift_space" "infra" {
  name = "infra"
  parent_space_id = "root"
  inherit_entities = true
}