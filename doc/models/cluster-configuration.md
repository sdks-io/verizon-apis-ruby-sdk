
# Cluster Configuration

## Structure

`ClusterConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tags` | [`EdgeServiceLaunchParams`](../../doc/models/edge-service-launch-params.md) | Optional | - |
| `end_point_access_type` | [`ClusterConfigEndpointAccessTypeEnum`](../../doc/models/cluster-config-endpoint-access-type-enum.md) | Optional | **Default**: `ClusterConfigEndpointAccessTypeEnum::PRIVATEACCESS` |
| `auto_create_network_infra` | `TrueClass \| FalseClass` | Optional | **Default**: `true` |
| `infra_i_pv_4_range` | `String` | Optional | **Default**: `'192.168.0.0/16'` |
| `network_nat_mode` | [`NetworkNatModeEnum`](../../doc/models/network-nat-mode-enum.md) | Optional | **Default**: `NetworkNatModeEnum::SINGLE` |
| `availability_zones` | [`Array<IdList>`](../../doc/models/id-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `private_network_infra_ids` | [`Array<IdList>`](../../doc/models/id-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `public_network_infra_ids` | [`Array<IdList>`](../../doc/models/id-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "autoCreateNetworkInfra": true,
  "networkNatMode": "single",
  "tags": {
    "key": "key0",
    "value": "value2"
  },
  "endPointAccessType": "privatePublicAccess",
  "infraIPv4range": "infraIPv4range0"
}
```

