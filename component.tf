module "components" {
  source  = "spacelift.io/nodadyoushutup/component/spacelift"
  for_each = { for component in local.config.component.stack : component => component }
  component = each.value
}