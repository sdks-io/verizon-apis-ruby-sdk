
# Node

## Structure

`Node`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `modified_at` | `String` | Optional | - |
| `node_id` | `String` | Optional | - |
| `private_ip` | `String` | Optional | - |
| `num_cores` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `total_memory` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `cluster_id` | `String` | Optional | - |
| `roles` | `Array<String>` | Optional | **Constraints**: *Maximum Items*: `100` |
| `id` | `String` | Optional | - |
| `approved` | `TrueClass \| FalseClass` | Optional | - |
| `status` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "num_cores": 8,
  "total_memory": 512,
  "approved": true,
  "name": "name0",
  "created_at": "created_at2",
  "modified_at": "modified_at6",
  "node_id": "node_id2",
  "private_ip": "private_ip0"
}
```

