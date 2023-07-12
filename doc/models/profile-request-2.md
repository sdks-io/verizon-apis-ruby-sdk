
# Profile Request 2

## Structure

`ProfileRequest2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `devices` | [`Array<DeviceList2>`](../../doc/models/device-list-2.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `account_name` | `String` | Optional | - |
| `carrier_name` | `String` | Optional | - |
| `reason_code` | `String` | Optional | - |
| `etf_waiver` | `TrueClass \| FalseClass` | Optional | **Default**: `true` |
| `check_fallback_profile` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "carrierName": "the name of the mobile service provider",
  "reasonCode": "a short code for the reason action was taken",
  "etfWaiver": true,
  "checkFallbackProfile": false,
  "devices": [
    {
      "ids": [
        {
          "id": "id7",
          "kind": "iccid"
        },
        {
          "id": "id8",
          "kind": "imei"
        }
      ]
    },
    {
      "ids": [
        {
          "id": "id8",
          "kind": "imei"
        },
        {
          "id": "id9",
          "kind": "eid"
        },
        {
          "id": "id0",
          "kind": "esn"
        }
      ]
    }
  ]
}
```

