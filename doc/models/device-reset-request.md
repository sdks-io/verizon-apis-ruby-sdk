
# Device Reset Request

Request body to Performs a device reboot.

## Structure

`DeviceResetRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The name of the account. An account name is usually numeric, and must include any leading zeros. |
| `action` | `String` | Optional | The action you want to take on the device. |
| `devices` | [`Array<Device>`](../../doc/models/device.md) | Optional | The devices for which you want to perform a factory reset or reboot. |

## Example (as JSON)

```json
{
  "accountName": "0642233522-00003",
  "action": "reboot",
  "devices": [
    {
      "id": "id6",
      "kind": "kind4"
    },
    {
      "id": "id7",
      "kind": "kind5"
    }
  ]
}
```

