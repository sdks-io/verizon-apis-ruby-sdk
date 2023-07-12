
# Device Location Subscription

## Structure

`DeviceLocationSubscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | Account identifier in "##########-#####". |
| `loc_type` | `String` | Optional | Location service license type. |
| `max_allowance` | `String` | Optional | The number of billable location requests allowed per billing cycle. |
| `purchase_time` | `String` | Optional | Location service purchase time. |

## Example (as JSON)

```json
{
  "accountName": "2024009649-00001",
  "locType": "TS-LOC-COARSE-CellID-5K",
  "maxAllowance": "5000",
  "purchaseTime": "2017-05-10 06:25:25.171 +0000 UTC"
}
```

