# module "database" {
#   source  = "spacelift.io/nodadyoushutup/component/spacelift"
#   count = try(contains(local.config.component, "database")) ? 1 : 0
#   component = "database"
# }