
# Node Status Capacity

## Structure

`NodeStatusCapacity`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cpu_count` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `ephemeral_storage_kb` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `memory_kb` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |

## Example (as JSON)

```json
{
  "cpuCount": 140,
  "ephemeralStorageKB": 28,
  "memoryKB": 242
}
```

