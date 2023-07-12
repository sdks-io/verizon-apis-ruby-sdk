# Diagnostics Settings

```ruby
diagnostics_settings_controller = client.diagnostics_settings
```

## Class Name

`DiagnosticsSettingsController`


# List Diagnostics Settings

This endpoint retrieves diagnostics settings synchronously.

```ruby
def list_diagnostics_settings(account_name,
                              devices)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | Account identifier. |
| `devices` | `String` | Query, Required | Devices list format: [{"id":"{imei1}","kind":"imei"},{"id":"{imei2}","kind":"imei"}]. |

## Server

`Server::DEVICE_DIAGNOSTICS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<DiagnosticObservationSetting>`](../../doc/models/diagnostic-observation-setting.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

devices = '[{"id":"864508030026238","kind":"IMEI"},{"id":"864508030026238","kind":"IMEI"}]'

result = diagnostics_settings_controller.list_diagnostics_settings(
  account_name,
  devices
)
```

## Example Response *(as JSON)*

```json
[
  {
    "accountName": "string",
    "device": {
      "id": "864508030026238",
      "kind": "IMEI"
    },
    "attributes": [
      {
        "name": "MANUFACTURER",
        "value": "string",
        "createdOn": "2019-09-07T23:08:03.532Z",
        "isObservable": true,
        "isObserving": true,
        "frequency": {
          "value": 5,
          "unit": "SECOND"
        }
      }
    ]
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response. | [`DeviceDiagnosticsResultException`](../../doc/models/device-diagnostics-result-exception.md) |

