
# Vendor Information

## Structure

`VendorInformation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | ID of the vendor.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `name` | `String` | Required | Name of the vendor.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `primary_email` | `String` | Optional | Primary email of the vendor.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `secondary_email` | `String` | Optional | Secondary email of the vendor.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `contact_number` | `String` | Optional | Contact number of the vendor.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |

## Example (as JSON)

```json
{
  "id": "acme",
  "name": "acme",
  "primaryEmail": "primaryEmail2",
  "secondaryEmail": "secondaryEmail6",
  "contactNumber": "contactNumber4"
}
```

