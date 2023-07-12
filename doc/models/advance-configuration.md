
# Advance Configuration

## Structure

`AdvanceConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_role_arn` | `String` | Optional | - |
| `service_role_permission_boundary` | `String` | Optional | - |
| `enable_proxy` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `http_proxy` | `String` | Optional | - |
| `https_proxy` | `String` | Optional | - |
| `no_proxy` | `String` | Optional | - |
| `proxy_root_ca` | `String` | Optional | - |
| `enable_tls_traffic` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `enable_auto_approve` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `enable_multi_master` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `enable_dedicated_master` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |

## Example (as JSON)

```json
{
  "enableProxy": false,
  "enableTlsTraffic": false,
  "enableAutoApprove": false,
  "enableMultiMaster": false,
  "enableDedicatedMaster": false,
  "serviceRoleArn": "serviceRoleArn4",
  "serviceRolePermissionBoundary": "serviceRolePermissionBoundary2",
  "httpProxy": "httpProxy8",
  "httpsProxy": "httpsProxy8"
}
```

