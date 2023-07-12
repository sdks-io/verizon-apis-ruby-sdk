
# Daily Usage Item

Contains only dates when device had sessions.

## Structure

`DailyUsageItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_time` | `String` | Optional | Start date of session. ISO 8601 format. |
| `end_time` | `String` | Optional | End date of session. ISO 8601 format. |
| `num_bytes` | `Integer` | Optional | Amount of data transferred, measured in Bytes. |

## Example (as JSON)

```json
{
  "startTime": "startTime6",
  "endTime": "endTime6",
  "numBytes": 150
}
```

