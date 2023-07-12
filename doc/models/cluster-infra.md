
# Cluster Infra

## Structure

`ClusterInfra`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `modified_at` | `String` | Optional | - |
| `organization_id` | `String` | Optional | - |
| `partner_id` | `String` | Optional | - |
| `country` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `latitude` | `String` | Optional | - |
| `longitude` | `String` | Optional | - |
| `cluster_id` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `cert` | `String` | Optional | - |
| `passphrase` | `String` | Optional | - |
| `id` | `String` | Optional | - |
| `cname` | `String` | Optional | - |
| `arecord` | `String` | Optional | - |
| `base_ratio` | `Float` | Optional | - |
| `ha_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `display_name` | `String` | Optional | - |
| `upgrade_status` | `String` | Optional | - |
| `provider_id` | `String` | Optional | - |
| `auto_create` | `TrueClass \| FalseClass` | Optional | - |
| `auto_approve_nodes` | `TrueClass \| FalseClass` | Optional | - |
| `provision_id` | `String` | Optional | - |
| `is_monitor_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `health` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `health_status_modified_at` | `String` | Optional | - |
| `manufacturer` | `String` | Optional | - |
| `cluster_type` | `String` | Optional | - |
| `cluster_blueprint` | `String` | Optional | - |
| `gimage_used` | `String` | Optional | - |
| `reason` | `String` | Optional | - |
| `is_master_dedicated` | `TrueClass \| FalseClass` | Optional | - |
| `project_id` | `String` | Optional | - |
| `provision_os` | `String` | Optional | - |
| `default_storage_class` | `String` | Optional | - |
| `storage_class_map` | [`StorageClassMap`](../../doc/models/storage-class-map.md) | Optional | - |
| `cni_provider` | `String` | Optional | - |
| `provision_k_8_s` | `String` | Optional | - |
| `etcd_version` | `String` | Optional | - |
| `consul_version` | `String` | Optional | - |
| `cluster_blueprint_version` | `String` | Optional | - |
| `upgrade_protection` | `TrueClass \| FalseClass` | Optional | - |
| `provision` | [`ClusterInfraProvision`](../../doc/models/cluster-infra-provision.md) | Optional | - |
| `metro` | [`Metro`](../../doc/models/metro.md) | Optional | - |
| `nodes` | [`Array<Node>`](../../doc/models/node.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `cluster_provider_params` | [`ClusterProviderParams`](../../doc/models/cluster-provider-params.md) | Optional | - |
| `nodegroups` | [`Array<NodeGroupItem>`](../../doc/models/node-group-item.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `cluster_version_info` | [`ClusterVersionInfo`](../../doc/models/cluster-version-info.md) | Optional | - |
| `projects` | [`Array<ProjectItem>`](../../doc/models/project-item.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `cluster` | [`Cluster`](../../doc/models/cluster.md) | Optional | - |

## Example (as JSON)

```json
{
  "ha_enabled": true,
  "auto_create": true,
  "auto_approve_nodes": true,
  "is_monitor_enabled": true,
  "is_master_dedicated": false,
  "upgrade_protection": true,
  "name": "name0",
  "created_at": "created_at2",
  "modified_at": "modified_at6",
  "organization_id": "organization_id0",
  "partner_id": "partner_id2"
}
```

