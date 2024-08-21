# # stack.tf

# resource "spacelift_stack" "stack" {
#   # for_each = {
#   #   for stack in local.spacelift.stack : stack.stack_id => stack
#   # }

#   for_each = local.spacelift.stack

#   space_id = each.value.space_id
#   administrative  = each.value.administrative
#   autodeploy = each.value.autodeploy
#   branch = each.value.branch
#   description = each.value.description
#   name = each.value.name
#   repository = each.value.repository
#   project_root = each.value.project_root
#   terraform_version = each.value.terraform_version
#   labels = concat(each.value.labels, ["all"])
#   github_enterprise { 
#     namespace = each.value.enterprise
#   }
# }

resource "spacelift_stack" "database" {
  for_each = {
    for component in local.config.component :
        component.name => component
        if component.name == "database"
    }

    space_id           = "root"
    administrative     = false
    autodeploy         = true
    branch             = "main"
    description        = "Database infrastructure"
    name               = "database_infra"
    repository         = "database"
    project_root       = "infra"
    terraform_version  = "1.5.7"
    labels          = ["all", "infra", "database"]
#   labels             = concat(each.value.labels, ["all"])
    github_enterprise { 
        namespace = "nodadyoushutup-terraform"
    }
}