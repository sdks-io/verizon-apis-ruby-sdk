
# Node Configuration

## Structure

`NodeConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | Name of the nodeGroup. |
| `is_wavelength_zone` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `is_managed_node_group` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `is_spot_instance_needed` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `end_point_access_type` | [`EndPointAccessTypeEnum`](../../doc/models/end-point-access-type-enum.md) | Optional | **Default**: `EndPointAccessTypeEnum::PRIVATE` |
| `instance_type` | `String` | Optional | **Default**: `'m5.xlarge'` |
| `nodes` | `Integer` | Optional | **Default**: `2`<br>**Constraints**: `>= 0`, `<= 1024` |
| `nodes_min` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `nodes_max` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `node_volume_type` | `String` | Optional | - |
| `subnet_cidr_block` | `String` | Optional | - |
| `node_ami_family` | `String` | Optional | **Default**: `'AmazonLinux2'` |
| `node_volume_size` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `key_name` | `String` | Optional | - |
| `max_pod_per_node` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `use_volume_encryption` | `TrueClass \| FalseClass` | Optional | **Default**: `true` |
| `node_private_networking` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `instance_profile_arn` | `String` | Optional | - |
| `instance_role_arn` | `String` | Optional | - |
| `instance_role_permission_boundary` | `String` | Optional | - |
| `security_group_ids` | [`Array<IdList>`](../../doc/models/id-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `availability_zone_ids` | [`Array<IdList>`](../../doc/models/id-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `labels` | [`NodeConfigurationLabel`](../../doc/models/node-configuration-label.md) | Optional | - |
| `tags` | [`NodeConfigurationTag`](../../doc/models/node-configuration-tag.md) | Optional | - |
| `auto_create_service_roles` | `TrueClass \| FalseClass` | Optional | **Default**: `true` |
| `enable_full_access_to_ecr` | `TrueClass \| FalseClass` | Optional | - |
| `enable_asg_access` | `TrueClass \| FalseClass` | Optional | - |
| `enable_dns_access` | `TrueClass \| FalseClass` | Optional | - |
| `enable_app_mesh_access` | `TrueClass \| FalseClass` | Optional | - |
| `enable_alb_access` | `TrueClass \| FalseClass` | Optional | - |
| `enable_efs_access` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "autoCreateServiceRoles": true,
  "enableAlbAccess": true,
  "enableAppMeshAccess": true,
  "enableAsgAccess": true,
  "enableDnsAccess": true,
  "enableEfsAccess": true,
  "enableFullAccessToEcr": true,
  "endPointAccessType": "private",
  "instanceType": "m5.xlarge",
  "isManagedNodeGroup": false,
  "isSpotInstanceNeeded": false,
  "isWavelengthZone": false,
  "labels": {},
  "name": "ng-22",
  "nodeAmiFamily": "AmazonLinux2",
  "nodePrivateNetworking": false,
  "nodeVolumeSize": 80,
  "nodeVolumeType": "gp3",
  "nodes": 2,
  "nodesMax": 2,
  "nodesMin": 2,
  "tags": {},
  "useVolumeEncryption": true
}
```

