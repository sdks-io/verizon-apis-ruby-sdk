# Firmware V3

```ruby
firmware_v3_controller = client.firmware_v3
```

## Class Name

`FirmwareV3Controller`

## Methods

* [List Available Firmware](../../doc/controllers/firmware-v3.md#list-available-firmware)
* [Synchronize Device Firmware](../../doc/controllers/firmware-v3.md#synchronize-device-firmware)
* [Report Device Firmware](../../doc/controllers/firmware-v3.md#report-device-firmware)


# List Available Firmware

This endpoint allows user to list the firmware of an account.

```ruby
def list_available_firmware(acc,
                            protocol)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `protocol` | [`FirmwareProtocolEnum`](../../doc/models/firmware-protocol-enum.md) | Query, Required | Filter to retrieve a specific protocol type used. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<FirmwarePackage>`](../../doc/models/firmware-package.md).

## Example Usage

```ruby
acc = '0000123456-00001'

protocol = FirmwareProtocolEnum::LW_M2M

result = firmware_v3_controller.list_available_firmware(
  acc,
  protocol
)
```

## Example Response *(as JSON)*

```json
[
  {
    "firmwareName": "VerizonSmartCommunities_LCO-277C4N_BG96MAR04A04M1G_BG96MAR04A04M1G_BETA0130B",
    "firmwareFrom": "BG96MAR04A04M1G",
    "firmwareTo": "BG96MAR04A04M1G_BETA0130B",
    "launchDate": "2012-04-23T18:25:43.511Z",
    "releaseNote": "",
    "model": "LCO-277C4N",
    "make": "Verizon Smart Communities",
    "protocol": "LWM2M"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |


# Synchronize Device Firmware

Synchronize ThingSpace with the FOTA server for up to 100 devices.

```ruby
def synchronize_device_firmware(acc,
                                body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `body` | [`FirmwareIMEI`](../../doc/models/firmware-imei.md) | Body, Required | DeviceIds to get firmware info synchronously. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeviceFirmwareList`](../../doc/models/device-firmware-list.md).

## Example Usage

```ruby
acc = '0000123456-00001'

body = FirmwareIMEI.new(
  [
    '15-digit IMEI'
  ]
)

result = firmware_v3_controller.synchronize_device_firmware(
  acc,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "0000123456-00001",
  "deviceFirmwarVersionList": [
    {
      "deviceId": "15-digit IMEI",
      "status": "FirmwareVersionUpdateSuccess",
      "firmwareVersion": "SR1.2.0.0-10657"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |


# Report Device Firmware

Ask a device to report its firmware version asynchronously.

```ruby
def report_device_firmware(acc,
                           device_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `device_id` | `String` | Template, Required | Device identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V3`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeviceFirmwareVersionUpdateResult`](../../doc/models/device-firmware-version-update-result.md).

## Example Usage

```ruby
acc = '0000123456-00001'

device_id = '15-digit IMEI'

result = firmware_v3_controller.report_device_firmware(
  acc,
  device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV3ResultException`](../../doc/models/fota-v3-result-exception.md) |

