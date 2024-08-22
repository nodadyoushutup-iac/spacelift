module "stack" {
    source  = "spacelift.io/nodadyoushutup/stack/spacelift"
    for_each = { 
        for stack_name, stack_config in local.config.stack : stack_name => stack_config 
        if !contains(local.config.component.name, stack_name)
    }
    space_id            = each.value.space_id
    administrative      = each.value.administrative
    autodeploy          = each.value.autodeploy
    branch              = each.value.branch
    description         = each.value.description
    # name                = each.value.name
    repository          = each.value.repository
    project_root        = each.value.project_root
    terraform_version   = each.value.terraform_version
    labels              = each.value.labels
    github_enterprise = {
        namespace = each.value.github_enterprise.namespace
    }
}