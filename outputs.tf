output "git_repository_file_lookup_id" {
  description = "Map of id values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repository_file_lookup_branch" {
  description = "Map of branch values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no branch are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.branch if v.branch != null && length(v.branch) > 0 }
}
output "git_repository_file_lookup_content" {
  description = "Map of content values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no content are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.content if v.content != null && length(v.content) > 0 }
}
output "git_repository_file_lookup_file" {
  description = "Map of file values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no file are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.file if v.file != null && length(v.file) > 0 }
}
output "git_repository_file_lookup_last_commit_message" {
  description = "Map of last_commit_message values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no last_commit_message are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.last_commit_message if v.last_commit_message != null && length(v.last_commit_message) > 0 }
}
output "git_repository_file_lookup_repository_id" {
  description = "Map of repository_id values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no repository_id are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}
output "git_repository_file_lookup_tag" {
  description = "Map of tag values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup except keys with no tag are omitted"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.tag if v.tag != null && length(v.tag) > 0 }
}

