module "component" {
  source  = "spacelift.io/nodadyoushutup/component/spacelift"
  for_each = { for component in local.config.component.name : component => component }
  
  component = each.value
}