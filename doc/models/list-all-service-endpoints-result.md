
# List All Service Endpoints Result

Response on successful retrieval of all registered service endpoints.

## Structure

`ListAllServiceEndpointsResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | HTTP status code.<br>**Default**: `'success'`<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9]{3,32}$` |
| `data` | `Array<String>` | Optional | A comma delimited list of all registered service endpoints.<br>**Constraints**: *Maximum Items*: `100`, *Maximum Length*: `32` |

## Example (as JSON)

```json
{
  "status": "success",
  "data": [
    "data5",
    "data6"
  ]
}
```

