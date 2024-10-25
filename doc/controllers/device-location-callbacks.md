# Device Location Callbacks

```ruby
device_location_callbacks_controller = client.device_location_callbacks
```

## Class Name

`DeviceLocationCallbacksController`

## Methods

* [Cancel Async Report](../../doc/controllers/device-location-callbacks.md#cancel-async-report)
* [List Registered Callbacks](../../doc/controllers/device-location-callbacks.md#list-registered-callbacks)
* [Register Callback](../../doc/controllers/device-location-callbacks.md#register-callback)
* [Deregister Callback](../../doc/controllers/device-location-callbacks.md#deregister-callback)


# Cancel Async Report

Cancel an asynchronous report request.

```ruby
def cancel_async_report(account_name,
                        txid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | Account identifier in "##########-#####". |
| `txid` | `String` | Template, Required | The `transactionId` value. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TransactionID`](../../doc/models/transaction-id.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

txid = '2c90bd28-eeee-ffff-gggg-7e3bd4fbff33'

result = device_location_callbacks_controller.cancel_async_report(
  account_name,
  txid
)
```

## Example Response *(as JSON)*

```json
{
  "txid": "2c90bd28-eeee-ffff-gggg-7e3bd4fbff33"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# List Registered Callbacks

Returns a list of all registered callback URLs for the account.

```ruby
def list_registered_callbacks(account_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | Account number. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<DeviceLocationCallback>`](../../doc/models/device-location-callback.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

result = device_location_callbacks_controller.list_registered_callbacks(account_name)
```

## Example Response *(as JSON)*

```json
[
  {
    "name": "Location",
    "url": "http://10.120.102.147:50569/CallbackListener/Location.asmx"
  },
  {
    "name": "Location",
    "url": "http://10.120.102.147:50569/CallbackListener/DeviceLocation.asmx"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Register Callback

Provide a URL to receive messages from a ThingSpace callback service.

```ruby
def register_callback(account_name,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | Account number. |
| `body` | [`DeviceLocationCallback`](../../doc/models/device-location-callback.md) | Body, Required | Request to register a callback. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CallbackRegistrationResult`](../../doc/models/callback-registration-result.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

body = DeviceLocationCallback.new(
  CallbackServiceNameEnum::LOCATION,
  'http://10.120.102.183:50559/CallbackListener/LocationServiceMessages.asmx'
)

result = device_location_callbacks_controller.register_callback(
  account_name,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "account": "0212312345-00001",
  "name": "Location"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Deregister Callback

Deregister a URL to stop receiving callback messages.

```ruby
def deregister_callback(account_name,
                        service)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | Account number. |
| `service` | [`CallbackServiceNameEnum`](../../doc/models/callback-service-name-enum.md) | Template, Required | Callback service name. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeviceLocationSuccessResult`](../../doc/models/device-location-success-result.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

service = CallbackServiceNameEnum::LOCATION

result = device_location_callbacks_controller.deregister_callback(
  account_name,
  service
)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |

