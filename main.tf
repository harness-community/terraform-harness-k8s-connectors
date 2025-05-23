locals {
  k8s_name      = var.connector_name == null ? var.name : var.connector_name
  ccm_name      = "${local.k8s_name}${var.ccm_connector_suffix}"
  k8s_id        = replace(replace(local.k8s_name, "-", "_"), " ", "_")
  ccm_id        = replace(replace(local.ccm_name, "-", "_"), " ", "_")
  delegate_name = var.delete_name == null ? var.name : var.delete_name
}

resource "harness_platform_connector_kubernetes" "this" {
  identifier = local.k8s_id
  name       = local.k8s_name

  inherit_from_delegate {
    delegate_selectors = [local.delegate_name]
  }
}

resource "harness_platform_connector_kubernetes_cloud_cost" "this" {
  identifier = local.ccm_id
  name       = local.ccm_name

  features_enabled = var.features_enabled
  connector_ref    = harness_platform_connector_kubernetes.this.id
}