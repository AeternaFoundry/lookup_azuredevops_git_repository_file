data "azuredevops_git_repository_file" "git_repository_file_lookup" {
  for_each = var.git_repository_file_lookup

  file          = each.value.file
  repository_id = each.value.repository_id
  branch        = each.value.branch
  tag           = each.value.tag

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

