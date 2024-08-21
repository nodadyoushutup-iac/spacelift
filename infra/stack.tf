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

locals {
    component = {
        database = contains(local.config.component, "database")
        vault = contains(local.config.component, "vault")
        npm = contains(local.config.component, "npm")
        development = contains(local.config.component, "development")
        fortigate = contains(local.config.component, "fortigate")
        k3s = contains(local.config.component, "k3s")
        monitoring = contains(local.config.component, "monitoring")
    }
}


resource "spacelift_stack" "database" {
    count = local.component.database ? 1 : 0
    space_id           = try(local.config.stack.database.space_id, "root")
    administrative     = try(local.config.stack.database.administrative, false)
    autodeploy         = try(local.config.stack.database.autodeploy, true)
    branch             = try(local.config.stack.database.branch, try(local.config.global.branch, "main"))
    description        = try(local.config.stack.database.description, "Database infrastructure")
    name               = try(local.config.stack.database.name, "database_infra")
    repository         = try(local.config.stack.database.repository, "database")
    project_root       = try(local.config.stack.database.project_root, "infra")
    terraform_version  = try(local.config.stack.database.terraform_version, "1.5.7")
    labels          = try(local.config.stack.database.labels, ["all", "infra", "database"])
    github_enterprise { 
        namespace = try(local.config.stack.database.github_enterprise.namespace, "nodadyoushutup-terraform")
    }
}


