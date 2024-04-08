# Software Management Callbacks V3

```ruby
software_management_callbacks_v3_controller = client.software_management_callbacks_v3
```

## Class Name

`SoftwareManagementCallbacksV3Controller`

## Methods

* [List Registered Callbacks](../../doc/controllers/software-management-callbacks-v3.md#list-registered-callbacks)
* [Update Callback](../../doc/controllers/software-management-callbacks-v3.md#update-callback)
* [Register Callback](../../doc/controllers/software-management-callbacks-v3.md#register-callback)
* [Deregister Callback](../../doc/controllers/software-management-callbacks-v3.md#deregister-callback)


# List Registered Callbacks

This endpoint allows user to get the registered callback information.

```ruby
def list_registered_callbacks(acc)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV3CallbackSummary`](../../doc/models/fota-v3-callback-summary.md).

## Example Usage

```ruby
acc = '0000123456-00001'

result = software_management_callbacks_v3_controller.list_registered_callbacks(acc)
```

## Example Response *(as JSON)*

```json
{
  "url": "http://10.120.102.183:50559/CallbackListener/FirmwareServiceMessages.asmx"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |


# Update Callback

This endpoint allows the user to update the HTTPS callback address.

```ruby
def update_callback(acc,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `body` | [`FotaV3CallbackRegistrationRequest`](../../doc/models/fota-v3-callback-registration-request.md) | Body, Required | Callback URL registration. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV3CallbackRegistrationResult`](../../doc/models/fota-v3-callback-registration-result.md).

## Example Usage

```ruby
acc = '0000123456-00001'

body = FotaV3CallbackRegistrationRequest.new(
  'https://255.255.11.135:50559/CallbackListener/FirmwareServiceMessages.asmx'
)

result = software_management_callbacks_v3_controller.update_callback(
  acc,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "url": "https://255.255.11.135:50559/CallbackListener/FirmwareServiceMessages.asmx"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |


# Register Callback

This endpoint allows the user to create the HTTPS callback address.

```ruby
def register_callback(acc,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `body` | [`FotaV3CallbackRegistrationRequest`](../../doc/models/fota-v3-callback-registration-request.md) | Body, Required | Callback URL registration. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV3CallbackRegistrationResult`](../../doc/models/fota-v3-callback-registration-result.md).

## Example Usage

```ruby
acc = '0000123456-00001'

body = FotaV3CallbackRegistrationRequest.new(
  'https://255.255.11.135:50559/CallbackListener/FirmwareServiceMessages.asmx'
)

result = software_management_callbacks_v3_controller.register_callback(
  acc,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "url": "https://255.255.11.135:50559/CallbackListener/FirmwareServiceMessages.asmx"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |


# Deregister Callback

This endpoint allows user to delete a previously registered callback URL.

```ruby
def deregister_callback(acc)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV3SuccessResult`](../../doc/models/fota-v3-success-result.md).

## Example Usage

```ruby
acc = '0000123456-00001'

result = software_management_callbacks_v3_controller.deregister_callback(acc)
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
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |

