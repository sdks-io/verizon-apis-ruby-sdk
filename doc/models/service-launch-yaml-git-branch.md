
# Service Launch Yaml Git Branch

## Structure

`ServiceLaunchYamlGitBranch`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `branch_name` | `String` | Optional | - |
| `values_yaml_paths` | `Array<String>` | Optional | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "valuesYamlPaths": [
    "/home/helmchart"
  ],
  "branchName": "branchName2"
}
```

