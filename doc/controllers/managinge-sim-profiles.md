# Managinge SIM Profiles

```ruby
managinge_sim_profiles_controller = client.managinge_sim_profiles
```

## Class Name

`ManagingeSIMProfilesController`

## Methods

* [Resume Profile](../../doc/controllers/managinge-sim-profiles.md#resume-profile)
* [Profile Suspend](../../doc/controllers/managinge-sim-profiles.md#profile-suspend)
* [Device Suspend](../../doc/controllers/managinge-sim-profiles.md#device-suspend)
* [Set Fallback](../../doc/controllers/managinge-sim-profiles.md#set-fallback)
* [Activate a Device Profile](../../doc/controllers/managinge-sim-profiles.md#activate-a-device-profile)
* [Enable a Device Profile](../../doc/controllers/managinge-sim-profiles.md#enable-a-device-profile)
* [Deactivate a Device Profile](../../doc/controllers/managinge-sim-profiles.md#deactivate-a-device-profile)
* [Enable a Device Profile for Download](../../doc/controllers/managinge-sim-profiles.md#enable-a-device-profile-for-download)
* [Download a Device Profile](../../doc/controllers/managinge-sim-profiles.md#download-a-device-profile)
* [Delete a Device Profile](../../doc/controllers/managinge-sim-profiles.md#delete-a-device-profile)


# Resume Profile

Resume service to a device with either a lead or local profile.

```ruby
def resume_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GIOProfileRequest`](../../doc/models/gio-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = GIOProfileRequest.new(
  [
    GIODeviceList.new
  ],
  '0000123456-00001',
  '12345',
  'service plan name'
)

result = managing_e_sim_profiles_controller.resume_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Profile Suspend

Suspend a device's Global profile.

```ruby
def profile_suspend(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GIOProfileRequest`](../../doc/models/gio-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = GIOProfileRequest.new(
  [
    GIODeviceList.new
  ],
  '0000123456-00001',
  '12345',
  'service plan name'
)

result = managing_e_sim_profiles_controller.profile_suspend(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Device Suspend

Suspend all service to an eUICC device, including the lead and local profile.

```ruby
def device_suspend(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GIOProfileRequest`](../../doc/models/gio-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = GIOProfileRequest.new(
  [
    GIODeviceList.new
  ],
  '0000123456-00001',
  '12345',
  'service plan name'
)

result = managing_e_sim_profiles_controller.device_suspend(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Set Fallback

Enable a fallback profile to be set.

```ruby
def set_fallback(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`FallBack`](../../doc/models/fall-back.md) | Body, Required | Set the fallback attributes to allow a fallback profile to be activated. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = FallBack.new

result = managing_e_sim_profiles_controller.set_fallback(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Activate a Device Profile

Activate a device with either a lead or local profile.

```ruby
def activate_a_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GIOProfileRequest`](../../doc/models/gio-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = GIOProfileRequest.new(
  [
    GIODeviceList.new
  ],
  '0000123456-00001',
  '12345',
  'service plan name'
)

result = managing_e_sim_profiles_controller.activate_a_device_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Enable a Device Profile

Enable a device lead or local profile.

```ruby
def enable_a_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceProfileRequest`](../../doc/models/device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = DeviceProfileRequest.new(
  nil,
  '0000123456-00001',
  'service plan name'
)

result = managing_e_sim_profiles_controller.enable_a_device_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Deactivate a Device Profile

Deactivate the lead or local profile. **Note:** to reactivate the profile, use the **Activate** endpoint above.

```ruby
def deactivate_a_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GIODeactivateDeviceProfileRequest`](../../doc/models/gio-deactivate-device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = GIODeactivateDeviceProfileRequest.new(
  nil,
  '0000123456-00001',
  'service plan name',
  false,
  'FF'
)

result = managing_e_sim_profiles_controller.deactivate_a_device_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Enable a Device Profile for Download

Enable the Global IoT Orchestration device profile for download.

```ruby
def enable_a_device_profile_for_download(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceProfileRequest`](../../doc/models/device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = DeviceProfileRequest.new(
  nil,
  '0000123456-00001',
  'service plan name'
)

result = managing_e_sim_profiles_controller.enable_a_device_profile_for_download(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Download a Device Profile

Download a Global IoT Orchestration device profile.

```ruby
def download_a_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceProfileRequest`](../../doc/models/device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = DeviceProfileRequest.new(
  nil,
  '0000123456-00001',
  'service plan name'
)

result = managing_e_sim_profiles_controller.download_a_device_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |


# Delete a Device Profile

Delete a device profile for Global IoT Orchestration. **Note:** the profile must be deactivated first!

```ruby
def delete_a_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceProfileRequest`](../../doc/models/device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GIORequestResponse`](../../doc/models/gio-request-response.md).

## Example Usage

```ruby
body = DeviceProfileRequest.new(
  nil,
  '0000123456-00001',
  'service plan name'
)

result = managing_e_sim_profiles_controller.delete_a_device_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`GIORestErrorResponseException`](../../doc/models/gio-rest-error-response-exception.md) |

