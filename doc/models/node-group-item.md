
# Node Group Item

## Structure

`NodeGroupItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `modified_at` | `String` | Optional | - |
| `organization_id` | `String` | Optional | - |
| `partner_id` | `String` | Optional | - |
| `instance_type` | `String` | Optional | - |
| `edge_id` | `String` | Optional | - |
| `id` | `String` | Optional | - |
| `provision_id` | `String` | Optional | - |
| `node_type` | `String` | Optional | - |
| `nodes` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `nodes_min` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `nodes_max` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `node_volume_size` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `node_volume_type` | `String` | Optional | - |
| `node_private_networking` | `TrueClass \| FalseClass` | Optional | - |
| `node_zones` | `Array<String>` | Optional | **Constraints**: *Maximum Items*: `100` |
| `node_ami_family` | `String` | Optional | - |
| `node_labels` | [`NodeLabel`](../../doc/models/node-label.md) | Optional | - |
| `nodegroup_type` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `enable_asg_access` | `TrueClass \| FalseClass` | Optional | - |
| `enable_full_access_to_ecr` | `TrueClass \| FalseClass` | Optional | - |
| `version_info_id` | `String` | Optional | - |
| `upgrade_info_id` | `String` | Optional | - |
| `tags` | [`NodeGroupItemTag`](../../doc/models/node-group-item-tag.md) | Optional | - |
| `config_file_content` | `String` | Optional | - |
| `provision` | [`Provision`](../../doc/models/provision.md) | Optional | - |
| `version_info` | [`VersionInfo`](../../doc/models/version-info.md) | Optional | - |
| `upgrade_info` | [`UpgradeInfo`](../../doc/models/upgrade-info.md) | Optional | - |

## Example (as JSON)

```json
{
  "node_private_networking": true,
  "enable_asg_access": true,
  "enable_full_access_to_ecr": false,
  "name": "name0",
  "created_at": "created_at2",
  "modified_at": "modified_at6",
  "organization_id": "organization_id0",
  "partner_id": "partner_id2"
}
```

