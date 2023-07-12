
# Service Launch Helm Git Branch

## Structure

`ServiceLaunchHelmGitBranch`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `branch_name` | `String` | Optional | - |
| `helm_chart_path` | `String` | Optional | - |
| `values_yaml_paths` | `Array<String>` | Optional | - |

## Example (as JSON)

```json
{
  "branchName": "mec_vz_helm_git",
  "helmChartPath": "/home/helmchart",
  "valuesYamlPaths": [
    "/home/helmchart"
  ]
}
```

