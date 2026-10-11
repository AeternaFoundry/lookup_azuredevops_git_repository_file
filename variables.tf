variable "git_repository_file_lookup" {
  description = <<EOT
Map of git_repository_file_lookup, attributes below
Required:
    - file
    - repository_id
Optional:
    - branch
    - tag
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    file          = string
    repository_id = string
    branch        = optional(string)
    tag           = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_repository_file_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.repository_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_file_lookup : (
        length(trimspace(v.file)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_file_lookup : (
        v.branch == null || (length(trimspace(v.branch)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_file_lookup : (
        v.tag == null || (length(trimspace(v.tag)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

