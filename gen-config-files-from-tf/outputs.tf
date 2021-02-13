output "config_files_created" {
  value = [for src, dest in local.all_templ_files: dest]
}
