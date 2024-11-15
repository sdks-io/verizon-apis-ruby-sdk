
# Set Fallback Attribute Request

## Structure

`SetFallbackAttributeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `devices` | [`Array<DeviceList>`](../../doc/models/device-list.md) | Required | **Constraints**: *Maximum Items*: `100` |
| `account_name` | `String` | Required | - |
| `carrier_name` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "devices": [
    {
      "deviceIds": [
        {
          "id": "id0",
          "kind": "kind8"
        }
      ]
    }
  ],
  "accountName": "0000123456-00001",
  "carrierName": "the name of the mobile service provider"
}
```

