
# Usage Trigger Update Request

## Structure

`UsageTriggerUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_name` | `String` | Optional | Usage trigger name |
| `account_name` | `String` | Required | Account name |
| `threshold_value` | `String` | Optional | The percent of subscribed usage required to activate the trigger, such as 90 or 100. |
| `sms_phone_numbers` | `String` | Optional | Comma-separated list of phone numbers to send SMS alerts to. Digits only; no dashes or parentheses, etc. |
| `email_addresses` | `String` | Optional | Comma-separated list of email addresses to send alerts to. |

## Example (as JSON)

```json
{
  "triggerName": "95% usage alert",
  "accountName": "0212312345-00001",
  "thresholdValue": "95",
  "smsPhoneNumbers": "5551231234",
  "emailAddresses": "me@theinternet.com, you@theinternet.com"
}
```

