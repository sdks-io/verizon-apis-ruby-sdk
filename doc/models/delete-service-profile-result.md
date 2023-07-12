
# Delete Service Profile Result

Response on successful deletion of service profile.

## Structure

`DeleteServiceProfileResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | **Constraints**: *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9]{3,32}$` |
| `message` | `String` | Optional | **Constraints**: *Maximum Length*: `32` |

## Example (as JSON)

```json
{
  "status": "Success",
  "message": "Service Profile Deleted"
}
```

