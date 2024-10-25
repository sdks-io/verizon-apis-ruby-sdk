
# 5g Biactivate Request

## Structure

`M5gBiactivateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | - |
| `service_plan` | `String` | Optional | - |
| `device_list_with_service_address` | [`Array<DeviceListWithServiceAddress1>`](../../doc/models/device-list-with-service-address-1.md) | Optional | - |
| `public_ip_restriction` | `String` | Optional | - |
| `carrier_name` | `String` | Optional | - |
| `mdn_zip_code` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "servicePlan": "service plan name",
  "publicIpRestriction": "Unrestricted",
  "carrierName": "Verizon Wireless",
  "mdnZipCode": "5-digit zip code",
  "deviceListWithServiceAddress": [
    {
      "deviceId": [
        {
          "id": "id0",
          "kind": "kind8"
        }
      ],
      "primaryPlaceofuse": {
        "address": {
          "addressLine1": "addressLine18",
          "city": "city6",
          "state": "state2",
          "zip": "zip0",
          "zip+4": "zip+48"
        },
        "customerName": {
          "firstName": "firstName4",
          "lastName": "lastName4",
          "middleName": "middleName8",
          "title": "title4",
          "suffex": "suffex4"
        }
      }
    },
    {
      "deviceId": [
        {
          "id": "id0",
          "kind": "kind8"
        }
      ],
      "primaryPlaceofuse": {
        "address": {
          "addressLine1": "addressLine18",
          "city": "city6",
          "state": "state2",
          "zip": "zip0",
          "zip+4": "zip+48"
        },
        "customerName": {
          "firstName": "firstName4",
          "lastName": "lastName4",
          "middleName": "middleName8",
          "title": "title4",
          "suffex": "suffex4"
        }
      }
    }
  ]
}
```

