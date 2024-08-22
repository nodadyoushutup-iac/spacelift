module "stack" {
    source  = "spacelift.io/nodadyoushutup/stack/spacelift"
    for_each = { 
        for stack_name, stack_config in local.config.stack : stack_name => stack_config 
        if !contains(local.config.component, stack_name)
    }

    ## REQUIRED ##
    name                = each.value.name
    repository          = each.value.repository

    ## UNIQUE ##
    project_root        = each.value.project_root
    description         = each.value.description
    labels              = each.value.labels

    ## OPTIONAL ##
    space_id            = each.value.space_id
    administrative      = each.value.administrative
    autodeploy          = each.value.autodeploy
    branch              = each.value.branch
    terraform_version   = each.value.terraform_version
    github_enterprise = {
        namespace = each.value.github_enterprise.namespace
    }
}