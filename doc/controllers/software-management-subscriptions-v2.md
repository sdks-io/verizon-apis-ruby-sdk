# Software Management Subscriptions V2

```ruby
software_management_subscriptions_v2_controller = client.software_management_subscriptions_v2
```

## Class Name

`SoftwareManagementSubscriptionsV2Controller`


# Get Account Subscription Status

This endpoint retrieves a FOTA subscription by account.

```ruby
def get_account_subscription_status(account)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV2Subscription`](../../doc/models/fota-v2-subscription.md).

## Example Usage

```ruby
account = '0000123456-00001'

result = software_management_subscriptions_v2_controller.get_account_subscription_status(account)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "00000000000-123345",
  "purchaseType": "TS-HFOTA-EVNT,TS-HFOTA-MRC",
  "licenseCount": 500,
  "licenseUsedCount": 400,
  "updateTime": "2020-09-17T21:11:32.170Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |

