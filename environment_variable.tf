# environment_variable.tf

resource "spacelift_environment_variable" "log_level" {
  context_id  = "config"
  name        = "TF_LOG"
  value       = try(local.config.global.log_level, "info")
  write_only  = false
  description = "Log level"
}