# Anomaly Triggers

```ruby
anomaly_triggers_controller = client.anomaly_triggers
```

## Class Name

`AnomalyTriggersController`

## Methods

* [Update Anomaly Detection Trigger](../../doc/controllers/anomaly-triggers.md#update-anomaly-detection-trigger)
* [List Anomaly Detection Trigger Settings](../../doc/controllers/anomaly-triggers.md#list-anomaly-detection-trigger-settings)
* [Create Anomaly Detection Trigger](../../doc/controllers/anomaly-triggers.md#create-anomaly-detection-trigger)


# Update Anomaly Detection Trigger

Updates an existing trigger using the account name.

```ruby
def update_anomaly_detection_trigger(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array<UpdateTriggerRequestOptions>`](../../doc/models/update-trigger-request-options.md) | Body, Required | Request to update existing trigger. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`IntelligenceSuccessResult`](../../doc/models/intelligence-success-result.md).

## Example Usage

```ruby
body = [
  UpdateTriggerRequestOptions.new(
    '595f5c44-c31c-4552-8670-020a1545a84d',
    'Anomaly Daily Usage REST Test-Patch Update 4',
    'UsageAnomaly',
    '0000123456-00001',
    AnomalyTriggerRequest.new(
      '0000123456-00001',
      true,
      true,
      false,
      true
    ),
    Notification.new(
      'DailySummary',
      true,
      false,
      'Anomaly Test API',
      3,
      'Hourly',
      'placeholder@verizon.com',
      true,
      [
        SMSNumber.new(
          'US Cellular',
          '9299280711'
        )
      ],
      true,
      'Critical'
    ),
    nil
  )
]

result = anomaly_triggers_controller.update_anomaly_detection_trigger(body)
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


# List Anomaly Detection Trigger Settings

Retrieves the values for a specific trigger ID.

```ruby
def list_anomaly_detection_trigger_settings(trigger_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Template, Required | The trigger ID of a specific trigger. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AnomalyTriggerResult`](../../doc/models/anomaly-trigger-result.md).

## Example Usage

```ruby
trigger_id = 'be1b5958-3e11-41db-9abd-b1b7618c0035'

result = anomaly_triggers_controller.list_anomaly_detection_trigger_settings(trigger_id)
```

## Example Response *(as JSON)*

```json
{
  "triggers": [
    {
      "triggerId": "BE1B5958-3E11-41DB-9ABD-B1B7618C0035",
      "triggerName": "Anomaly Daily Usage REST Test-1",
      "organizationName": "AnamolyDetectionRTRTest",
      "triggerCategory": "UsageAnomaly",
      "triggerAttributes": [
        {
          "key": "DataPercentage50",
          "value": false
        }
      ],
      "createdAt": "2021-10-21T23:57:03.397.0000Z",
      "modifiedAt": "2021-10-21T23:57:03.397.0000Z",
      "notification": {
        "notificationType": "DailySummary",
        "callback": true,
        "emailNotification": true,
        "notificationGroupName": "Anomaly Test API",
        "notificationFrequencyFactor": -2147483648,
        "externalEmailRecipients": "placeholder@verizon.com",
        "smsNotification": true,
        "smsNumbers": [
          {
            "carrier": "US Cellular",
            "number": "9299280711"
          }
        ],
        "reminder": false,
        "severity": "Critical"
      }
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | An error occurred. | [`IntelligenceResultException`](../../doc/models/intelligence-result-exception.md) |


# Create Anomaly Detection Trigger

Creates the trigger to identify an anomaly.

```ruby
def create_anomaly_detection_trigger(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array<CreateTriggerRequestOptions>`](../../doc/models/create-trigger-request-options.md) | Body, Required | Request to create an anomaly trigger. |

## Server

`Server::M2M`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AnomalyDetectionTrigger`](../../doc/models/anomaly-detection-trigger.md).

## Example Usage

```ruby
body = [
  CreateTriggerRequestOptions.new(
    'Anomaly Daily Usage REST Test-Patch 1',
    'UsageAnomaly',
    '0000123456-00001',
    AnomalyTriggerRequest.new(
      '0000123456-00001',
      true,
      true,
      true,
      true
    ),
    Notification.new(
      'DailySummary',
      true,
      false,
      'Anomaly Test API',
      3,
      'Hourly',
      'placeholder@verizon.com',
      true,
      [
        SMSNumber.new(
          'US Cellular',
          '9299280711'
        )
      ],
      true,
      'Critical'
    ),
    nil
  )
]

result = anomaly_triggers_controller.create_anomaly_detection_trigger(body)
```

## Example Response *(as JSON)*

```json
{
  "triggerId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | An error occurred. | [`IntelligenceResultException`](../../doc/models/intelligence-result-exception.md) |

