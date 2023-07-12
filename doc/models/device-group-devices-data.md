
# Device Group Devices Data

Returns the name, description, and list of devices in a device group.

## Structure

`DeviceGroupDevicesData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Optional | The description of the device group. |
| `devices` | [`Array<AccountDeviceList>`](../../doc/models/account-device-list.md) | Optional | The devices in the device group. |
| `has_more_data` | `TrueClass \| FalseClass` | Optional | False for a status 200 response.True for a status 202 response, indicating that there is more data to be retrieved. |
| `name` | `String` | Optional | The name of the device group. |

## Example (as JSON)

```json
{
  "name": "Nebraska Trucks",
  "description": "All service trucks in Nebraska.",
  "hasMoreData": false,
  "devices": [
    {
      "deviceIds": [
        {
          "id": "12345",
          "kind": "meid"
        },
        {
          "id": "54321",
          "kind": "mdn"
        }
      ]
    }
  ]
}
```

