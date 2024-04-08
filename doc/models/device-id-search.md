
# Device Id Search

Search by device id.

## Structure

`DeviceIdSearch`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `contains` | `String` | Optional | The string appears anywhere in the identifer. |
| `startswith` | `String` | Optional | The identifer must start with the specified string. |
| `endswith` | `String` | Optional | The identifier must end with the specified string. |
| `kind` | `String` | Required | The type of the device identifier. Valid types of identifiers are:ESN (decimal),EID,ICCID (up to 20 digits),IMEI (up to 16 digits),MDN,MEID (hexadecimal),MSISDN. |

## Example (as JSON)

```json
{
  "kind": "iccid",
  "contains": "4259",
  "startswith": "startswith2",
  "endswith": "endswith4"
}
```

