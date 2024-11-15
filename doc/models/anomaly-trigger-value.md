
# Anomaly Trigger Value

Trigger details.

## Structure

`AnomalyTriggerValue`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Optional | The system assigned name of the trigger being updated. |
| `trigger_name` | `String` | Optional | The user defined name of the trigger. |
| `organization_name` | `String` | Optional | The user assigned name of the organization associated with the trigger. |
| `trigger_category` | `String` | Optional | This is the value to use in the request body to detect anomalous behaivior. The values in this table will only be relevant when this parameter is set to this value. |
| `trigger_attributes` | [`Array<TriggerAttributesOptions>`](../../doc/models/trigger-attributes-options.md) | Optional | Additional details and keys for the trigger. |
| `created_at` | `String` | Optional | Timestamp for whe the trigger was created. |
| `modified_at` | `String` | Optional | Timestamp for the most recent time the trigger was modified. |

## Example (as JSON)

```json
{
  "triggerId": "BE1B5958-3E11-41DB-9ABD-B1B7618C0035",
  "triggerName": "Anomaly Daily Usage REST Test-1",
  "organizationName": "AnamolyDetectionRTRTest",
  "triggerCategory": "UsageAnomaly",
  "triggerAttributes": [
    {
      "key": "DataPercentage50",
      "value": false
    }
  ],
  "createdAt": "2021-10-21T23:57:03.397.0000Z",
  "modifiedAt": "2021-10-21T23:57:03.397.0000Z"
}
```

