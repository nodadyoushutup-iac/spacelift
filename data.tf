# data.tf

data "spacelift_space" "init" {
  space_id = spacelift_space.init.id
}

data "spacelift_space" "infra" {
  space_id = spacelift_space.infra.id
}

data "spacelift_space" "config" {
  space_id = spacelift_space.config.id
}
