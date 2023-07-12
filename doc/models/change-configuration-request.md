
# Change Configuration Request

The request body identifies the device and the values to set.

## Structure

`ChangeConfigurationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accountidentifier` | [`AccountIdentifier`](../../doc/models/account-identifier.md) | Optional | The ID of the authenticating billing account, in the format `{"billingaccountid":"1234567890-12345"}`. |
| `resourceidentifier` | [`ResourceIdentifier`](../../doc/models/resource-identifier.md) | Optional | The ID of the target to delete, in the format {"id": "dd1682d3-2d80-cefc-f3ee-25154800beff"}. |
| `configuration` | [`Configuration`](../../doc/models/configuration.md) | Optional | List of the field names and values to set. |

## Example (as JSON)

```json
{
  "accountidentifier": {
    "billingaccountid": "1223334444-00001"
  },
  "resourceidentifier": {
    "id": "f8b112df-739c-6236-f059-106c67bafd99",
    "imei": "imei2"
  },
  "configuration": {
    "frequency": "Low"
  }
}
```

