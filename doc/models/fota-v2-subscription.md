
# Fota V2 Subscription

FOTA Subscription.

## Structure

`FotaV2Subscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | Account identifier in "##########-#####". |
| `purchase_type` | `String` | Optional | Subscription models used by the account. |
| `license_count` | `Integer` | Optional | Number of monthly licenses in an MRC subscription. |
| `license_used_count` | `Integer` | Optional | Number of licenses currently assigned to devices. |
| `update_time` | `String` | Optional | The date and time of when the subscription was last updated. |

## Example (as JSON)

```json
{
  "accountName": "00000000000-123345",
  "purchaseType": "TS-HFOTA-EVNT,TS-HFOTA-MRC",
  "licenseCount": 500,
  "licenseUsedCount": 400,
  "updateTime": "2021-06-03 00:03:56.079 +0000 UTC"
}
```

