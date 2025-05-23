variable "name" {
  type        = string
  description = "Cluster name"
}

variable "delete_name" {
  type        = string
  default     = null
  description = "Delegate name, defaults to cluster name"
}

variable "connector_name" {
  type        = string
  default     = null
  description = "Connector name, defaults to cluster name"
}

variable "ccm_connector_suffix" {
  type        = string
  default     = "_ccm"
  description = "Suffix to add to CCM connector from Kubernetes connector"
}

variable "features_enabled" {
  type    = list(string)
  default = ["VISIBILITY", "OPTIMIZATION"]
  validation {
    condition = alltrue([
      for i in var.features_enabled : contains(["VISIBILITY", "OPTIMIZATION"], i)
    ])
    error_message = "Allowed features are VISIBILITY and OPTIMIZATION"
  }
}