
# Device List IP

## Structure

`DeviceListIP`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_ids` | [`Array<PWNDeviceId>`](../../doc/models/pwn-device-id.md) | Required | - |
| `ipaddress` | `String` | Required | - |

## Example (as JSON)

```json
{
  "deviceIds": [
    {
      "id": "99948099913024600000",
      "kind": "iccid"
    }
  ],
  "ipAddress": "10.3.4.5"
}
```

