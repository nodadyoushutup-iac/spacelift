# stack.tf

output "yaml" {
  value = local.spacelift.stack
}

resource "spacelift_stack" "stack" {
  for_each = {
    for stack in local.spacelift.stack : stack => stack
  }

  space_id = each.value.space_id
  administrative  = each.value.administrative
  autodeploy = each.value.autodeploy
  branch = each.value.branch
  description = each.value.description
  name = each.value.name
  repository = each.value.repository
  project_root = each.value.project_root
  terraform_version = each.value.terraform_version
  labels = concat(each.value.labels, ["all"])
  github_enterprise { 
    namespace = each.value.enterprise
  }
}