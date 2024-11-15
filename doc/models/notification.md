
# Notification

## Structure

`Notification`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notification_type` | `String` | Optional | - |
| `callback` | `TrueClass \| FalseClass` | Optional | - |
| `email_notification` | `TrueClass \| FalseClass` | Optional | - |
| `notification_group_name` | `String` | Optional | - |
| `notification_frequency_factor` | `Integer` | Optional | - |
| `notification_frequency_interval` | `String` | Optional | - |
| `external_email_recipients` | `String` | Optional | - |
| `sms_notification` | `TrueClass \| FalseClass` | Optional | - |
| `sms_numbers` | [`Array<SmsNumbers>`](../../doc/models/sms-numbers.md) | Optional | - |
| `reminder` | `TrueClass \| FalseClass` | Optional | - |
| `severity` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "notificationType": "notificationType2",
  "callback": false,
  "emailNotification": false,
  "notificationGroupName": "notificationGroupName2",
  "notificationFrequencyFactor": 214
}
```

