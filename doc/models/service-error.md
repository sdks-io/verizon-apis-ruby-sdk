
# Service Error

Errors related to service.

## Structure

`ServiceError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `error_category` | `String` | Optional | Category defined under which the error falls.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[a-zA-Z0-9\- _]+$` |
| `error_code` | `String` | Optional | Error Code is required.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `error_desc` | `String` | Optional | Error description is required.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[a-zA-Z0-9\- _]+$` |
| `error_subcategory` | `String` | Optional | Sub-category of the error defined.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[a-zA-Z0-9\- _]+$` |

## Example (as JSON)

```json
{
  "errorCategory": "Resource Not Found",
  "errorCode": "404",
  "errorDesc": "Requested resource not found in database",
  "errorSubcategory": "Record not Found in Database"
}
```

