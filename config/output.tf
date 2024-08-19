# config/output.tf

output "stacks" {
  value = data.spacelift_stacks.stacks.stacks
}