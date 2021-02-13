variable "stack_id" {
  type = string
  description = "An identifier for the whole stack being provisioned in AWS"
}

variable "k8s_namespace" {
  type    = string
  default = "**"
  description = "The k8s namespace for the resources being provisioned. Defaults to all/any."
}

variable "deployment_roots" {
  type = list(string)
  description = "List of folders in which the configuration files are located. Must contain _templates_ folder."
}

variable "template_in" {
  type = string
  description = "Name of template file to look for in all deployment_root folders"
}

variable "template_vars" {
  type = map(string)
  description = "Template variables for substitutions"
}
