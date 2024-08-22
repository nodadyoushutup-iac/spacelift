module "stack" {
    source  = "spacelift.io/nodadyoushutup/stack/spacelift"
    for_each = { 
        for stack_name, stack_config in local.config.stack : stack_name => stack_config 
        if !contains(local.config.component, stack_name)
    }

    ## REQUIRED ##
    name        = each.value.name
    repository  = each.value.repository

    ## UNIQUE ##
    project_root        = try(each.value.project_root, null)
    description         = try(each.value.description, null)
    labels              = try(each.value.labels, null)

    ## OPTIONAL ##
    space_id            = try(each.value.space_id, null)
    administrative      = try(each.value.administrative, null)
    autodeploy          = try(each.value.autodeploy, null)
    branch              = try(each.value.branch, null)
    terraform_version   = try(each.value.terraform_version, null)
    github_enterprise = {
        namespace = try(each.value.github_enterprise.namespace, null)
    }
}