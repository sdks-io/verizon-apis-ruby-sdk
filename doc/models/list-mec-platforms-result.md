
# List MEC Platforms Result

Response to return the optimal 5G Edge platforms for deployment based on a region, service profile of the service that you want to deploy or user equipment.

## Structure

`ListMECPlatformsResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mec_platforms` | [`Array<MECPlatformResource>`](../../doc/models/mec-platform-resource.md) | Optional | A list of optimal MEC Platforms where you can register your deployed application.<br>**Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "MECPlatforms": [
    {
      "ern": "ern0",
      "zone": "zone6",
      "region": "region0",
      "status": "unknown",
      "properties": {
        "key1": "val1",
        "key2": "val2"
      }
    }
  ]
}
```

