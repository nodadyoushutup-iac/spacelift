# module "database_infra" {
#   source  = "spacelift.io/nodadyoushutup/stack/spacelift"
#   count = try(contains(local.config.component, "database")) ? 1 : 0

#   # REQUIRED
#   name = try(local.config.stack.database.infra.name, "database_infra")
#   repository = try(local.config.stack.database.infra.repository, "database")

#   # UNIQUE
#   description = try(
#     try(
#         local.config.stack.database.infra.description, 
#         local.config.global.stack.description
#     ), 
#     "Database infrastructure"
#   )
#   project_root = try(
#     try(
#       local.config.stack.database.infra.project_root, 
#       local.config.global.stack.project_root
#     ), 
#     "infra"
#   )
#   labels = try(
#     try(
#       concat(local.config.stack.database.infra.labels, ["infra", "database"]), 
#       concat(local.config.global.stack.labels, ["infra", "database"])
#     ),
#     ["infra", "database"]
#   )

#   # OPTIONAL
#   space_id = try(
#     try(
#       local.config.stack.database.infra.space_id, 
#       local.config.global.stack.space_id
#     ), 
#     null
#   )
#   administrative = try(
#     try(
#       local.config.stack.database.infra.administrative, 
#       local.config.global.stack.administrative
#     ), 
#     null
#   )
#   autodeploy = try(
#     try(
#       local.config.stack.database.infra.autodeploy, 
#       local.config.global.stack.autodeploy
#     ), 
#     null
#   )
#   branch = try(
#     try(
#       local.config.stack.database.infra.branch, 
#       local.config.global.stack.branch
#     ), 
#     null
#   )
#   terraform_version = try(
#     try(
#       local.config.stack.database.infra.terraform_version, 
#       local.config.global.stack.terraform_version
#     ), 
#     null
#   )
#   context_priority = try(
#     try(
#       local.config.stack.database.infra.context_priority, 
#       local.config.global.stack.context_priority
#     ), 
#     null
#   )
#   github_enterprise = { 
#     namespace = try(
#       try(
#         local.config.stack.database.infra.github_enterprise.namespace, 
#         local.config.global.stack.github_enterprise.namespace
#       ),
#       null
#     )
#   }
# }


output "branch" {
  value = local.config.stack.database.infra.branch
}