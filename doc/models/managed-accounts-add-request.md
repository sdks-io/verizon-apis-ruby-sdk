
# Managed Accounts Add Request

## Structure

`ManagedAccountsAddRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | Account identifier |
| `service_name` | [`ServiceNameEnum`](../../doc/models/service-name-enum.md) | Required | Service name<br>**Default**: `ServiceNameEnum::LOCATION` |
| `type` | `String` | Required | SKU name |
| `managed_acc_list` | `Array<String>` | Required | managed account list |

## Example (as JSON)

```json
{
  "accountName": "1234567890-00001",
  "serviceName": "Location",
  "type": "TS-LOC-COARSE-CellID-Aggr",
  "managedAccList": [
    "1223334444-00001",
    "2334445555-00001",
    "3445556666-00001"
  ]
}
```

