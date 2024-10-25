
# Account Details

## Structure

`AccountDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The numeric name of the account, in the format "0000123456-00001". Leading zeros must be included.<br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9-]{3,32}$` |
| `account_number` | `String` | Optional | The numeric name of the account, in the format "0000123456-00001". Leading zeros must be included.<br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9-]{3,32}$` |
| `organization_name` | `String` | Optional | user defined name of organization<br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9]{3,32}$` |
| `is_provisioning_allowed` | `TrueClass \| FalseClass` | Optional | Flag set to indicate if account details can be edited or not. Default is "true". |
| `carriers` | [`Array<Carrier>`](../../doc/models/carrier.md) | Optional | - |
| `features` | [`Array<Feature>`](../../doc/models/feature.md) | Optional | - |
| `service_plans` | [`Array<CarrierServicePlan>`](../../doc/models/carrier-service-plan.md) | Optional | - |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "accountNumber": "0000123456-00001",
  "organizationName": "organizationName2",
  "isProvisioningAllowed": false,
  "carriers": [
    {
      "carriers": "carriers0"
    },
    {
      "carriers": "carriers0"
    },
    {
      "carriers": "carriers0"
    }
  ]
}
```

