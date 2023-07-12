# Device Profile Management

```ruby
device_profile_management_controller = client.device_profile_management
```

## Class Name

`DeviceProfileManagementController`

## Methods

* [Activate Device Through Profile](../../doc/controllers/device-profile-management.md#activate-device-through-profile)
* [Profile to Activate Device](../../doc/controllers/device-profile-management.md#profile-to-activate-device)
* [Profile to Deactivate Device](../../doc/controllers/device-profile-management.md#profile-to-deactivate-device)
* [Profile to Set Fallback Attribute](../../doc/controllers/device-profile-management.md#profile-to-set-fallback-attribute)


# Activate Device Through Profile

Uses the profile to bring the device under management.

```ruby
def activate_device_through_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ActivateDeviceProfileRequest`](../../doc/models/activate-device-profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
body = ActivateDeviceProfileRequest.new(
  [
    DeviceList.new(
      [
        DeviceId1.new(
          '32-digit EID',
          KindEnum::EID
        ),
        DeviceId1.new(
          '15-digit IMEI',
          KindEnum::IMEI
        )
      ]
    )
  ],
  '0000123456-00001',
  'The service plan name',
  'five digit zip code'
)

result = device_profile_management_controller.activate_device_through_profile(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |


# Profile to Activate Device

Uses the profile to activate the device.

```ruby
def profile_to_activate_device(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ProfileRequest`](../../doc/models/profile-request.md) | Body, Required | Device Profile Query |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
body = ProfileRequest.new(
  nil,
  'the name of the mobile service provider',
  '0000123456-00001',
  'The service plan name',
  'five digit zip code',
  nil
)

result = device_profile_management_controller.profile_to_activate_device(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |


# Profile to Deactivate Device

Uses the profile to deactivate the device.

```ruby
def profile_to_deactivate_device(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ProfileRequest2`](../../doc/models/profile-request-2.md) | Body, Required | Device Profile Query |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
body = ProfileRequest2.new(
  nil,
  '0000123456-00001',
  'the name of the mobile service provider',
  'a short code for the reason action was taken',
  true,
  false
)

result = device_profile_management_controller.profile_to_deactivate_device(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |


# Profile to Set Fallback Attribute

Allows the profile to set the fallback attribute to the device.

```ruby
def profile_to_set_fallback_attribute(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SetFallbackAttributeRequest`](../../doc/models/set-fallback-attribute-request.md) | Body, Required | Device Profile Query |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
body = SetFallbackAttributeRequest.new(
  nil,
  '0000123456-00001',
  'the name of the mobile service provider'
)

result = device_profile_management_controller.profile_to_set_fallback_attribute(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |

