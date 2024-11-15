
# Usage Anomaly Attributes

The details of the UsageAnomaly trigger.

## Structure

`UsageAnomalyAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_names` | `String` | Optional | The Verizon billing account associated with the anomaly triggers for this trigger to be active for devices in those accounts. An account name is usually numeric, and must include any leading zeros.<br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32` |
| `device_group` | `String` | Optional | The names of device groups associated with the anomaly triggers for this trigger to be active for devices in those groups. |
| `include_abnormal` | `TrueClass \| FalseClass` | Optional | Whether or not to include anomalies classified as 'abnormal'.<br />true<br />false<br />Classification is set as part of ThingSpace Intelligence anomaly detection settings. |
| `include_very_abnormal` | `TrueClass \| FalseClass` | Optional | Whether or not to include anomalies classified as 'very abnormal'.<br />true<br />false<br />Classification is set as part of ThingSpace Intelligence anomaly detection settings. |
| `include_under_expected_usage` | `TrueClass \| FalseClass` | Optional | Whether or not to include anomalies that are directionally under the expected usage.<br />true<br />false. |
| `include_over_expected_usage` | `TrueClass \| FalseClass` | Optional | Whether or not to include anomalies that are directionally over the expected usage. <br />true<br />false. |

## Example (as JSON)

```json
{
  "accountNames": "0000123456-00001",
  "deviceGroup": "User Group 1",
  "includeAbnormal": true,
  "includeVeryAbnormal": true,
  "includeUnderExpectedUsage": true,
  "includeOverExpectedUsage": true
}
```

