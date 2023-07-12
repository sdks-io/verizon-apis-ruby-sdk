# Anomaly Settings

```ruby
anomaly_settings_controller = client.anomaly_settings
```

## Class Name

`AnomalySettingsController`

## Methods

* [Activate Anomaly Detection](../../doc/controllers/anomaly-settings.md#activate-anomaly-detection)
* [List Anomaly Detection Settings](../../doc/controllers/anomaly-settings.md#list-anomaly-detection-settings)
* [Reset Anomaly Detection Parameters](../../doc/controllers/anomaly-settings.md#reset-anomaly-detection-parameters)


# Activate Anomaly Detection

Uses the subscribed account ID to activate anomaly detection and set threshold values.

```ruby
def activate_anomaly_detection(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AnomalyDetectionRequest`](../../doc/models/anomaly-detection-request.md) | Body, Required | Request to activate anomaly detection. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`IntelligenceSuccessResult`](../../doc/models/intelligence-success-result.md).

## Example Usage

```ruby
body = AnomalyDetectionRequest.new(
  '0000123456-00001',
  'anomaly',
  SensitivityParameters.new(
    1.1,
    true,
    true,
    0.55
  )
)

result = anomaly_settings_controller.activate_anomaly_detection(body)
```

## Example Response *(as JSON)*

```json
{
  "status": "Success"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | An error occurred. | [`IntelligenceResultException`](../../doc/models/intelligence-result-exception.md) |


# List Anomaly Detection Settings

Retrieves the current anomaly detection settings for an account.

```ruby
def list_anomaly_detection_settings(account_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | The name of the subscribed account. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AnomalyDetectionSettings`](../../doc/models/anomaly-detection-settings.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

result = anomaly_settings_controller.list_anomaly_detection_settings(account_name)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "Success",
  "sensitivityParameter": {
    "abnormalMaxValue": 1.1,
    "enableAbnormal": true,
    "enableVeryAbnormal": true,
    "veryAbnormalMaxValue": 0.55
  },
  "status": "Active"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | An error occurred. | [`IntelligenceResultException`](../../doc/models/intelligence-result-exception.md) |


# Reset Anomaly Detection Parameters

Resets the thresholds to zero.

```ruby
def reset_anomaly_detection_parameters(account_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | The name of the subscribed account. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`IntelligenceSuccessResult`](../../doc/models/intelligence-success-result.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

result = anomaly_settings_controller.reset_anomaly_detection_parameters(account_name)
```

## Example Response *(as JSON)*

```json
{
  "status": "Success"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | An error occurred. | [`IntelligenceResultException`](../../doc/models/intelligence-result-exception.md) |

