
# Service Launch Helm Yaml Git Tag

## Structure

`ServiceLaunchHelmYamlGitTag`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tag_name` | `String` | Optional | - |
| `values_yaml_paths` | `Array<String>` | Optional | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "tagName": "mec_vz_helm_git",
  "valuesYamlPaths": [
    "/home/helmchart"
  ]
}
```

