
# Change Pmec Device State Deactivate Request

## Structure

`ChangePmecDeviceStateDeactivateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | - |
| `device_list` | [`Array<MECDeviceList>`](../../doc/models/mec-device-list.md) | Required | - |

## Example (as JSON)

```json
{
  "accountName": "0342351414-00001",
  "deviceList": [
    {
      "deviceIds": [
        {
          "id": "99948099913024600000",
          "kind": "iccid"
        }
      ]
    }
  ]
}
```

