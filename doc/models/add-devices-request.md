
# Add Devices Request

Request to add the devices.

## Structure

`AddDevicesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The billing account to which the devices are added. |
| `custom_fields` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | The names and values for any custom fields that you want set for the devices as they are added to the account. |
| `devices_to_add` | [`Array<AccountDeviceList>`](../../doc/models/account-device-list.md) | Optional | The devices that you want to add. |
| `group_name` | `String` | Optional | The name of a device group to add the devices to. They are added to the default device group if you don't include this parameter. |
| `sku_number` | `String` | Optional | The Stock Keeping Unit (SKU) number of a 4G device type with an embedded SIM. |
| `state` | `String` | Optional | The initial service state for the devices. The only valid state is “Preactive.” |

## Example (as JSON)

```json
{
  "accountName": "0868924207-00001",
  "customFields": [
    {
      "key": "CustomField2",
      "value": "SuperVend"
    }
  ],
  "devicesToAdd": [
    {
      "deviceIds": [
        {
          "kind": "imei",
          "id": "990013907835573"
        },
        {
          "kind": "iccid",
          "id": "89141390780800784259"
        }
      ]
    },
    {
      "deviceIds": [
        {
          "kind": "imei",
          "id": "990013907884259"
        },
        {
          "kind": "iccid",
          "id": "89141390780800735573"
        }
      ]
    }
  ],
  "groupName": "West Region",
  "state": "preactive",
  "skuNumber": "skuNumber6"
}
```

