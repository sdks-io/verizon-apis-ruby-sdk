
# Query MEC Performance Metrics Request

MEC performance metrics request.

## Structure

`QueryMECPerformanceMetricsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `imei` | `String` | Required | The 15-digit International Mobile Equipment Identifier. |
| `msisdn` | `String` | Required | The 12-digit Mobile Station International Subscriber Directory Number. |

## Example (as JSON)

```json
{
  "IMEI": "440246108109673",
  "MSISDN": "10691876598"
}
```

