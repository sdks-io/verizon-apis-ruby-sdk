
# Update Trigger V2 Request

Update Trigger Request

## Structure

`UpdateTriggerV2Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Optional | - |
| `trigger_name` | `String` | Optional | - |
| `ecpd_id` | `String` | Optional | - |
| `device_group_name` | `String` | Optional | - |
| `trigger_category` | `String` | Optional | - |
| `price_plan_trigger` | [`PricePlanTrigger`](../../doc/models/price-plan-trigger.md) | Optional | - |
| `notification` | [`Notification`](../../doc/models/notification.md) | Optional | - |
| `active` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "triggerId": "triggerId4",
  "triggerName": "triggerName6",
  "ecpdId": "ecpdId0",
  "deviceGroupName": "deviceGroupName4",
  "triggerCategory": "triggerCategory8"
}
```

