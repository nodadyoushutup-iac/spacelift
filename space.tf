# space.tf

resource "spacelift_space" "infra" {
  name = "infra"
  parent_space_id = "root"
  inherit_entities = true
}

resource "spacelift_space" "init" {
  name = "init"
  parent_space_id = "root"
  inherit_entities = true
}

resource "spacelift_space" "config" {
  name = "config"
  parent_space_id = "root"
  inherit_entities = true
}

