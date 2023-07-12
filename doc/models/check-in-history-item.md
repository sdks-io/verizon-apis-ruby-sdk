
# Check in History Item

Check-in history for a device.

## Structure

`CheckInHistoryItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Required | Device IMEI. |
| `client_type` | `String` | Required | Type of client. |
| `result` | `String` | Required | - |
| `failure_type` | `String` | Required | - |
| `time_completed` | `DateTime` | Required | - |

## Example (as JSON)

```json
{
  "deviceId": "990013907835573",
  "clientType": "clientType2",
  "result": "result6",
  "failureType": "failureType6",
  "timeCompleted": "10/22/2020 19:35:07"
}
```

