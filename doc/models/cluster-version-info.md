
# Cluster Version Info

## Structure

`ClusterVersionInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cluster_id` | `String` | Optional | - |
| `kube_version` | `String` | Optional | - |
| `organization_id` | `String` | Optional | - |
| `partner_id` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `modified_at` | `String` | Optional | - |
| `id` | `String` | Optional | - |
| `behind_latest_by` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |

## Example (as JSON)

```json
{
  "cluster_id": "cluster_id4",
  "kube_version": "kube_version4",
  "organization_id": "organization_id0",
  "partner_id": "partner_id2",
  "created_at": "created_at2"
}
```

