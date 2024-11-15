
# Trigger Attributes Options

## Structure

`TriggerAttributesOptions`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Optional | If present, the NotificationGroupName will be listed here. |
| `value` | `TrueClass \| FalseClass` | Optional | DataPercentage50<br />True - Trigger on Data percentage is over 50% used<br />False - Do not trigger when over 50% used. |

## Example (as JSON)

```json
{
  "key": "DataPercentage50",
  "value": false
}
```

