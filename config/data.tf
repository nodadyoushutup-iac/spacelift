# config/data.tf

data "spacelift_context" "debug" {
  context_id = "debug"
}

data "spacelift_context" "provider" {
  context_id = "provider"
}

data "spacelift_stack" "proxmox_infra" {
  stack_id = "proxmox_infra"
}

data "spacelift_stacks" "all" {
  labels {
    any_of = ["all"]
  }
}

# data "spacelift_stacks" "proxmox" {
#   labels {
#     any_of = ["proxmox"]
#   }
# }

data "spacelift_stacks" "virtual_machine" {
  labels {
    any_of = ["virtual_machine"]
  }
}


data "spacelift_stacks" "database" {
  labels {
    any_of = ["database"]
  }
}

data "spacelift_stacks" "vault" {
  labels {
    any_of = ["vault"]
  }
}
