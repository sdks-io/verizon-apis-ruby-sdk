
# Edge Discovery Result Exception

Base type for all errors.

## Structure

`EdgeDiscoveryResultException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Required | HTTP status code or status of response.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9]{3,32}$` |
| `message` | `String` | Required | Error details.<br>**Constraints**: *Maximum Length*: `32` |
| `data` | [`EdgeDiscoveryResultData`](../../doc/models/edge-discovery-result-data.md) | Optional | For cases where user input exceeds the boundary values an additional 'data' key will be returned with a relevant description. |

## Example (as JSON)

```json
{
  "status": "status8",
  "message": "message0",
  "data": {
    "additionalMessage": "additionalMessage2"
  }
}
```

