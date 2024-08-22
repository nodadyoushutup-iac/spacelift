module "components" {
  source  = "spacelift.io/nodadyoushutup/component/spacelift"
  for_each = { for component in local.config.component.stack.name : component => component }
  component = each.value
}