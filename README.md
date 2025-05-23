# terraform-harness-k8s-connectors

terraform module to create kubernetes connectors for ccm setup

for ccm the recommended approach is using an in-cluster delegate to collect usage metrics

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.2.0 |
| harness | >= 0.34.0 |

## Providers

| Name | Version |
|------|---------|
| harness | 0.37.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [harness_platform_connector_kubernetes.this](https://registry.terraform.io/providers/harness/harness/latest/docs/resources/platform_connector_kubernetes) | resource |
| [harness_platform_connector_kubernetes_cloud_cost.this](https://registry.terraform.io/providers/harness/harness/latest/docs/resources/platform_connector_kubernetes_cloud_cost) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ccm\_connector\_suffix | Suffix to add to CCM connector from Kubernetes connector | `string` | `"_ccm"` | no |
| connector\_name | Connector name, defaults to cluster name | `string` | `null` | no |
| delete\_name | Delegate name, defaults to cluster name | `string` | `null` | no |
| features\_enabled | n/a | `list(string)` | <pre>[<br/>  "VISIBILITY",<br/>  "OPTIMIZATION"<br/>]</pre> | no |
| name | Cluster name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| harness\_platform\_connector\_kubernetes\_cloud\_cost\_id | n/a |
| harness\_platform\_connector\_kubernetes\_id | n/a |