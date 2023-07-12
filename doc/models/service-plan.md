
# Service Plan

Details of the service plan.

## Structure

`ServicePlan`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `carrier_service_plan_code` | `String` | Optional | The code that is used by the carrier for the service plan. |
| `code` | `String` | Optional | The code of the service plan, which may not be the same as the name. |
| `extended_attributes` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | Any extended attributes for the service plan, as Key and Value pairs. |
| `name` | `String` | Optional | The name of the service plan. |
| `size_kb` | `Integer` | Optional | The size of the service plan in kilobytes. |

## Example (as JSON)

```json
{
  "name": "2MSHR5GB",
  "code": "M2MSHR5GB",
  "sizeKb": 0,
  "carrierServicePlanCode": "84638",
  "extendedAttributes": [
    {
      "key": "key9",
      "value": "value1"
    },
    {
      "key": "key0",
      "value": "value2"
    }
  ]
}
```

