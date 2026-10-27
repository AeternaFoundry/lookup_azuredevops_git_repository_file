output "git_repository_file_lookup_id" {
  description = "Map of id values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.id }
}
output "git_repository_file_lookup_branch" {
  description = "Map of branch values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.branch }
}
output "git_repository_file_lookup_content" {
  description = "Map of content values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.content }
}
output "git_repository_file_lookup_file" {
  description = "Map of file values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.file }
}
output "git_repository_file_lookup_last_commit_message" {
  description = "Map of last_commit_message values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.last_commit_message }
}
output "git_repository_file_lookup_repository_id" {
  description = "Map of repository_id values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.repository_id }
}
output "git_repository_file_lookup_tag" {
  description = "Map of tag values across all git_repository_file_lookup, keyed the same as var.git_repository_file_lookup"
  value       = { for k, v in data.azuredevops_git_repository_file.git_repository_file_lookup : k => v.tag }
}

