
# V3 License Summary

Information for FOTA licenses assigned to devices.

## Structure

`V3LicenseSummary`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | Account identifier. |
| `total_licenses` | `Integer` | Optional | Total FOTA license count. |
| `assigned_licenses` | `Integer` | Required | Assigned FOTA license count. |
| `has_more_data` | `TrueClass \| FalseClass` | Required | True if there are more devices to retrieve. |
| `last_seen_device_id` | `String` | Optional | Last seen device identifier. |
| `max_page_size` | `Integer` | Required | Maximum page size. |
| `device_list` | [`Array<V3LicenseDevice>`](../../doc/models/v3-license-device.md) | Optional | Device IMEI list. |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "totalLicenses": 5000,
  "assignedLicenses": 4319,
  "hasMoreData": true,
  "lastSeenDeviceId": "1000",
  "maxPageSize": 1000,
  "deviceList": [
    {
      "deviceId": "15-digit IMEI",
      "assignmentTime": "2017-11-29 20:15:42.738 +0000 UTC"
    },
    {
      "deviceId": "15-digit IMEI",
      "assignmentTime": "2017-11-29 20:15:42.738 +0000 UTC"
    }
  ]
}
```

