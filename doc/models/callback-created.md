
# Callback Created

## Structure

`CallbackCreated`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Required | The billing account number for which callback messages will be sent. |
| `name` | `String` | Required | The name of the callback service, which identifies the type and format of messages that will be sent to the registered URL. |
| `url` | `String` | Optional | The address of the callback listening service where the ThingSpace Platform will send callback messages for the service type. |

## Example (as JSON)

```json
{
  "aname": "0844021539-00001",
  "name": "BullseyeReporting",
  "url": "https://tsustgtests.mocklab.io/notifications/bullseye"
}
```

