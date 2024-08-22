module "stack" {
    source  = "spacelift.io/nodadyoushutup/stack/spacelift"
    for_each = { 
        for stack_name, stack_config in local.config.stack : stack_name => stack_config 
        if !contains(local.config.component, stack_name)
    }

    ## REQUIRED ##
    name                = try(each.value.name)
    repository          = try(each.value.repository)

    ## UNIQUE ##
    project_root        = try(each.value.project_root)
    description         = try(each.value.description)
    labels              = try(each.value.labels)

    ## OPTIONAL ##
    space_id            = try(each.value.space_id)
    administrative      = try(each.value.administrative)
    autodeploy          = try(each.value.autodeploy)
    branch              = try(each.value.branch)
    terraform_version   = try(each.value.terraform_version)
    github_enterprise = {
        namespace = try(each.value.github_enterprise.namespace)
    }
}