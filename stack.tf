# stack.tf

# data "spacelift_space" "infra" {
#   space_id = spacelift_space.infra.id
# }

resource "spacelift_stack" "proxmox_infra" {
  space_id = spacelift_space.infra.id
  administrative = false
  autodeploy = true
  branch = "main"
  description = "Proxmox infrastructure"
  name = "proxmox_infra"
  repository = "proxmox"
  terraform_version = "1.5.7"
  labels = ["infra", "proxmox", "pve"]
  github_enterprise { 
        namespace = "nodadyoushutup-terraform"
    }
}