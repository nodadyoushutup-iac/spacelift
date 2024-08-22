# resource "spacelift_stack" "database" {
#     count = contains(local.config.component, "database") ? 1 : 0
#     space_id           = try(local.config.stack.database.space_id, "root")
#     administrative     = try(local.config.stack.database.administrative, false)
#     autodeploy         = try(local.config.stack.database.autodeploy, true)
#     branch             = try(local.config.stack.database.branch, try(local.config.global.branch, "main"))
#     description        = try(local.config.stack.database.description, "Database infrastructure")
#     name               = try(local.config.stack.database.name, "database_infra")
#     repository         = try(local.config.stack.database.repository, "database")
#     project_root       = try(local.config.stack.database.project_root, "infra")
#     terraform_version  = try(local.config.stack.database.terraform_version, try(local.config.global.terraform.version, "1.5.7"))
#     labels          = try(concat(local.config.stack.database.labels, ["all", "infra", "database"]), ["all", "infra", "database"])
#     github_enterprise { 
#         namespace = try(local.config.stack.database.github_enterprise.namespace, "nodadyoushutup-terraform")
#     }
# }

# resource "spacelift_context_attachment" "config_database" {
#   count = contains(local.config.component, "database") ? 1 : 0
#   context_id = "config"
#   stack_id   = "database_infra"
#   priority   = 100
# }

# module "database_infra" {
#   source  = "spacelift.io/nodadyoushutup/stack/spacelift"
#   count = try(contains(local.config.component, "database")) ? 1 : 0

#   # REQUIRED
#   name = try(local.config.stack.database.name, "database_infra")
#   repository = try(local.config.stack.database.repository, "database")

#   # UNIQUE
#   description = try(
#     try(
#         local.config.stack.database.description, 
#         local.config.global.stack.description
#     ), 
#     "Database infrastructure"
#   )
#   project_root = try(
#     try(
#       local.config.stack.database.project_root, 
#       local.config.global.stack.project_root
#     ), 
#     "infra"
#   )
#   labels = try(
#     try(
#       concat(local.config.stack.database.labels, ["infra", "database"]), 
#       concat(local.config.global.stack.labels, ["infra", "database"])
#     ),
#     ["infra", "database"]
#   )

#   # OPTIONAL
#   space_id = try(
#     try(
#       local.config.stack.database.space_id, 
#       local.config.global.stack.space_id
#     ), 
#     null
#   )
#   administrative = try(
#     try(
#       local.config.stack.database.administrative, 
#       local.config.global.stack.administrative
#     ), 
#     null
#   )
#   autodeploy = try(
#     try(
#       local.config.stack.database.autodeploy, 
#       local.config.global.stack.autodeploy
#     ), 
#     null
#   )
#   branch = try(
#     try(
#       local.config.stack.database.branch, 
#       local.config.global.stack.branch
#     ), 
#     null
#   )
#   terraform_version = try(
#     try(
#       local.config.stack.database.terraform_version, 
#       local.config.global.stack.terraform_version
#     ), 
#     null
#   )
#   context_priority = try(
#     try(
#       local.config.stack.database.context_priority, 
#       local.config.global.stack.context_priority
#     ), 
#     null
#   )
#   github_enterprise = { 
#     namespace = try(
#       try(
#         local.config.stack.database.github_enterprise.namespace, 
#         local.config.global.stack.github_enterprise.namespace
#       ),
#       null
#     )
#   }
# }