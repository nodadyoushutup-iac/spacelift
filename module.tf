# resource "spacelift_module" "proxmox_virtual_machine" {
#   name               = "virtual_machine"
#   terraform_provider = "proxmox"
#   administrative     = false
#   branch             = "main"
#   description        = "Virtual Machine (Simple)"
#   repository         = "terraform"
#   project_root       = "modules/proxmox/virtual_machine"
#   labels             = ["infra", "proxmox"]
# }

# resource "spacelift_module" "fortigate_vip" {
#   name               = "vip"
#   terraform_provider = "fortigate"
#   administrative     = false
#   branch             = "main"
#   description        = "Fortigate Firewall Virtual IP"
#   repository         = "terraform"
#   project_root       = "modules/fortigate/vip"
#   labels             = ["config", "fortigate"]
# }

# resource "spacelift_module" "fortigate_policy" {
#   name               = "policy"
#   terraform_provider = "fortigate"
#   administrative     = false
#   branch             = "main"
#   description        = "Fortigate Firewall Policy"
#   repository         = "terraform"
#   project_root       = "modules/fortigate/policy"
#   labels             = ["config", "fortigate"]
# }

# resource "spacelift_module" "fortigate_port_forward" {
#   name               = "port_forward"
#   terraform_provider = "fortigate"
#   administrative     = false
#   branch             = "main"
#   description        = "Fortigate Port Forward"
#   repository         = "terraform"
#   project_root       = "modules/fortigate/port_forward"
#   labels             = ["config", "fortigate"]
# }
