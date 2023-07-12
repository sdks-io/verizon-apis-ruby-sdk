
# Metadata

## Structure

`Metadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `display_name` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `modified_at` | `String` | Optional | - |
| `labels` | [`MetadataLabel`](../../doc/models/metadata-label.md) | Optional | - |
| `annotations` | [`MetadataAnnotation`](../../doc/models/metadata-annotation.md) | Optional | - |
| `organization_id` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `partner_id` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `project_id` | `Integer` | Optional | **Constraints**: `>= 0`, `<= 1024` |
| `id` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "name": "name0",
  "displayName": "displayName2",
  "createdAt": "createdAt6",
  "modifiedAt": "modifiedAt6",
  "labels": {
    "alpha.rafay.io/cluster-name": "alpha.rafay.io/cluster-name4",
    "alpha.rafay.io/instance-id": "alpha.rafay.io/instance-id6",
    "alpha.rafay.io/nodegroup-name": "alpha.rafay.io/nodegroup-name2",
    "beta.kubernetes.io/arch": "beta.kubernetes.io/arch6",
    "beta.kubernetes.io/instance-type": "beta.kubernetes.io/instance-type6"
  }
}
```

