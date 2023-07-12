# Software Management Callbacks V2

```ruby
software_management_callbacks_v2_controller = client.software_management_callbacks_v2
```

## Class Name

`SoftwareManagementCallbacksV2Controller`

## Methods

* [List Registered Callbacks](../../doc/controllers/software-management-callbacks-v2.md#list-registered-callbacks)
* [Update Callback](../../doc/controllers/software-management-callbacks-v2.md#update-callback)
* [Register Callback](../../doc/controllers/software-management-callbacks-v2.md#register-callback)
* [Deregister Callback](../../doc/controllers/software-management-callbacks-v2.md#deregister-callback)


# List Registered Callbacks

This endpoint allows user to get the registered callback information.

```ruby
def list_registered_callbacks(account)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CallbackSummary`](../../doc/models/callback-summary.md).

## Example Usage

```ruby
account = '0000123456-00001'

result = software_management_callbacks_v2_controller.list_registered_callbacks(account)
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
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Update Callback

This endpoint allows user to update the HTTPS callback address.

```ruby
def update_callback(account,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `body` | [`FotaV2CallbackRegistrationRequest`](../../doc/models/fota-v2-callback-registration-request.md) | Body, Required | Callback URL registration. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV2CallbackRegistrationResult`](../../doc/models/fota-v2-callback-registration-result.md).

## Example Usage

```ruby
account = '0000123456-00001'

body = FotaV2CallbackRegistrationRequest.new(
  'https://255.255.11.135:50559/CallbackListener/FirmwareServiceMessages.asmx'
)

result = software_management_callbacks_v2_controller.update_callback(
  account,
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
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Register Callback

This endpoint allows user to create the HTTPS callback address.

```ruby
def register_callback(account,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `body` | [`FotaV2CallbackRegistrationRequest`](../../doc/models/fota-v2-callback-registration-request.md) | Body, Required | Callback URL registration. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV2CallbackRegistrationResult`](../../doc/models/fota-v2-callback-registration-result.md).

## Example Usage

```ruby
account = '0000123456-00001'

body = FotaV2CallbackRegistrationRequest.new(
  'https://10.120.102.183:50559/CallbackListener/FirmwareServiceMessages.asmx'
)

result = software_management_callbacks_v2_controller.register_callback(
  account,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "url": "https://10.120.102.183:50559/CallbackListener/FirmwareServiceMessages.asmx"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Deregister Callback

This endpoint allows user to delete a previously registered callback URL.

```ruby
def deregister_callback(account)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV2SuccessResult`](../../doc/models/fota-v2-success-result.md).

## Example Usage

```ruby
account = '0000123456-00001'

result = software_management_callbacks_v2_controller.deregister_callback(account)
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
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |

