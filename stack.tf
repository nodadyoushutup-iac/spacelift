module "database_infra" {
  source  = "spacelift.io/nodadyoushutup/stack/spacelift"
  count = try(contains(local.config.component, "database")) ? 1 : 0

  # REQUIRED
  name = try(local.config.stack.database.name, "database_infra")
  repository = try(local.config.stack.database.repository, "database")

  # UNIQUE
  description = try(
    try(
        local.config.stack.database.description, 
        local.config.global.stack.description
    ), 
    "Database infrastructure"
  )
  project_root = try(
    try(
      local.config.stack.database.project_root, 
      local.config.global.stack.project_root
    ), 
    "infra"
  )
  labels = try(
    try(
      concat(local.config.stack.database.labels, ["infra", "database"]), 
      concat(local.config.global.stack.labels, ["infra", "database"])
    ),
    ["infra", "database"]
  )

  # OPTIONAL
  space_id = try(
    try(
      local.config.stack.database.space_id, 
      local.config.global.stack.space_id
    ), 
    null
  )
  administrative = try(
    try(
      local.config.stack.database.administrative, 
      local.config.global.stack.administrative
    ), 
    null
  )
  autodeploy = try(
    try(
      local.config.stack.database.autodeploy, 
      local.config.global.stack.autodeploy
    ), 
    null
  )
  branch = try(
    try(
      local.config.stack.database.branch, 
      local.config.global.stack.branch
    ), 
    null
  )
  terraform_version = try(
    try(
      local.config.stack.database.terraform_version, 
      local.config.global.stack.terraform_version
    ), 
    null
  )
  context_priority = try(
    try(
      local.config.stack.database.context_priority, 
      local.config.global.stack.context_priority
    ), 
    null
  )
  github_enterprise = { 
    namespace = try(
      try(
        local.config.stack.database.github_enterprise.namespace, 
        local.config.global.stack.github_enterprise.namespace
      ),
      null
    )
  }
  # ansible = { 
  #   playbook = try(
  #     try(
  #       local.config.stack.database.ansible.playbook, 
  #       local.config.global.stack.ansible.playbook
  #     ),
  #     null
  #   )
  # }
}

module "vault_infra" {
  source  = "spacelift.io/nodadyoushutup/stack/spacelift"
  count = try(contains(local.config.component, "vault")) ? 1 : 0

  # REQUIRED
  name = try(local.config.stack.vault.name, "vault_infra")
  repository = try(local.config.stack.vault.repository, "vault")

  # UNIQUE
  description = try(
    try(
        local.config.stack.vault.description, 
        local.config.global.stack.description
    ), 
    "Vault infrastructure"
  )
  project_root = try(
    try(
      local.config.stack.vault.project_root, 
      local.config.global.stack.project_root
    ), 
    "infra"
  )
  labels = try(
    try(
      concat(local.config.stack.vault.labels, ["infra", "vault"]), 
      concat(local.config.global.stack.labels, ["infra", "vault"])
    ),
    ["infra", "vault"]
  )

  # OPTIONAL
  space_id = try(
    try(
      local.config.stack.vault.space_id, 
      local.config.global.stack.space_id
    ), 
    null
  )
  administrative = try(
    try(
      local.config.stack.vault.administrative, 
      local.config.global.stack.administrative
    ), 
    null
  )
  autodeploy = try(
    try(
      local.config.stack.vault.autodeploy, 
      local.config.global.stack.autodeploy
    ), 
    null
  )
  branch = try(
    try(
      local.config.stack.vault.branch, 
      local.config.global.stack.branch
    ), 
    null
  )
  terraform_version = try(
    try(
      local.config.stack.vault.terraform_version, 
      local.config.global.stack.terraform_version
    ), 
    null
  )
  context_priority = try(
    try(
      local.config.stack.vault.context_priority, 
      local.config.global.stack.context_priority
    ), 
    null
  )
  github_enterprise = { 
    namespace = try(
      try(
        local.config.stack.vault.github_enterprise.namespace, 
        local.config.global.stack.github_enterprise.namespace
      ),
      null
    )
  }
}