
# 5g Biaccount Nameobject

## Structure

`M5gBiaccountNameobject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | - |
| `billing_cycle_end_date` | `String` | Optional | - |
| `carrier_information` | [`Array<M5gBiCarrierInformation>`](../../doc/models/5g-bi-carrier-information.md) | Optional | - |
| `connected` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `String` | Optional | - |
| `custom_fields` | [`Array<M5gBikeyValue1>`](../../doc/models/5g-bikey-value-1.md) | Optional | - |
| `device_ids` | [`Array<M5gBideviceId1>`](../../doc/models/5g-bidevice-id-1.md) | Optional | - |
| `extended_attributes` | [`Array<M5gBikeyValue1>`](../../doc/models/5g-bikey-value-1.md) | Optional | - |
| `group_names` | [`Array<GroupName>`](../../doc/models/group-name.md) | Optional | - |
| `ipaddress` | `String` | Optional | - |
| `last_activation_by` | `String` | Optional | - |
| `last_activation_date` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "billingCycleEndDate": "11/10/2022 00:00:00",
  "connected": false,
  "createdAt": "10/20/2022 18:23:41",
  "ipAddress": "0.0.0.0",
  "lastActivationBy": "User Name",
  "lastActivationDate": "2022-11-02 T21:36:18Z",
  "carrierInformation": [
    {
      "carrierName": "carrierName4"
    },
    {
      "carrierName": "carrierName4"
    },
    {
      "carrierName": "carrierName4"
    }
  ]
}
```

