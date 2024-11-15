
# Device Service Request

Device information.

## Structure

`DeviceServiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `imei` | `String` | Required | International Mobile Equipment Identifier. The unique ID of a device.<br>**Constraints**: *Pattern*: `^[0-9]{15}$` |
| `bullseye_enable` | `TrueClass \| FalseClass` | Required | Set to Enable (true) or Disable (false). |

## Example (as JSON)

```json
{
  "imei": "354658090356210",
  "BullseyeEnable": true
}
```

