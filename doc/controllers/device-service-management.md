# Device Service Management

```ruby
device_service_management_controller = client.device_service_management
```

## Class Name

`DeviceServiceManagementController`

## Methods

* [Get Device Hyper Precise Status](../../doc/controllers/device-service-management.md#get-device-hyper-precise-status)
* [Update Device Hyper Precise Status](../../doc/controllers/device-service-management.md#update-device-hyper-precise-status)


# Get Device Hyper Precise Status

Gets the list of a status for hyper-precise location devices.

```ruby
def get_device_hyper_precise_status(imei,
                                    account_number)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `imei` | `String` | Query, Required | A unique identifier for a device. |
| `account_number` | `String` | Query, Required | A unique identifier for an account. |

## Server

`Server::HYPER_PRECISE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`BullseyeServiceResult`](../../doc/models/bullseye-service-result.md).

## Example Usage

```ruby
imei = '709312034493372'

account_number = '0844021539-00001'

result = device_service_management_controller.get_device_hyper_precise_status(
  imei,
  account_number
)
```

## Example Response *(as JSON)*

```json
{
  "accountNumber": "0844021539-00001",
  "deviceList": [
    {
      "imei": "709312034493372",
      "BullseyeEnable": true
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 401 | Unauthorized request. Access token is missing or invalid. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 403 | Forbidden request. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 404 | Bad request. Not found. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 409 | Bad request. Conflict state. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 500 | Internal Server Error. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |


# Update Device Hyper Precise Status

Enable/disable hyper-precise service for a device.

```ruby
def update_device_hyper_precise_status(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`BullseyeServiceRequest`](../../doc/models/bullseye-service-request.md) | Body, Required | List of devices and hyper-precise required statuses. |

## Server

`Server::HYPER_PRECISE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`BullseyeServiceResult`](../../doc/models/bullseye-service-result.md).

## Example Usage

```ruby
body = BullseyeServiceRequest.new(
  [
    DeviceServiceRequest.new(
      '354658090356210',
      true
    )
  ],
  '0242080353-00001'
)

result = device_service_management_controller.update_device_hyper_precise_status(body)
```

## Example Response *(as JSON)*

```json
{
  "accountNumber": "0844021539-00001",
  "deviceList": [
    {
      "imei": "709312034493372",
      "BullseyeEnable": true
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 401 | Unauthorized request. Access token is missing or invalid. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 403 | Forbidden request. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 404 | Bad request. Not found. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 409 | Bad request. Conflict state. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |
| 500 | Internal Server Error. | [`HyperPreciseLocationResultException`](../../doc/models/hyper-precise-location-result-exception.md) |

