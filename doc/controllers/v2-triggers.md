# V2 Triggers

Helps to create and manage promo alert triggers

```ruby
m_v2_triggers_controller = client.m_v2_triggers
```

## Class Name

`MV2TriggersController`

## Methods

* [Create Trigger](../../doc/controllers/v2-triggers.md#create-trigger)
* [Update Trigger](../../doc/controllers/v2-triggers.md#update-trigger)


# Create Trigger

This creates an individual change plan for account group share.

```ruby
def create_trigger(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateTriggerV2Request`](../../doc/models/create-trigger-v2-request.md) | Body, Required | - |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerV2Response`](../../doc/models/trigger-v2-response.md).

## Example Usage

```ruby
body = CreateTriggerV2Request.new

result = m_v2_triggers_controller.create_trigger(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Response | [`RulesEngineRestErrorResponseException`](../../doc/models/rules-engine-rest-error-response-exception.md) |


# Update Trigger

This updates an individual change plan for account group share.

```ruby
def update_trigger(vz_m2m_token,
                   body,
                   x_request_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `vz_m2m_token` | `String` | Header, Required | M2M-MC Session Token |
| `body` | [`UpdateTriggerV2Request`](../../doc/models/update-trigger-v2-request.md) | Body, Required | - |
| `x_request_id` | `String` | Header, Optional | Transaction Id |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerV2Response`](../../doc/models/trigger-v2-response.md).

## Example Usage

```ruby
vz_m2m_token = 'VZ-M2M-Token2'

body = UpdateTriggerV2Request.new

result = m_v2_triggers_controller.update_trigger(
  vz_m2m_token,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Response | [`RulesEngineRestErrorResponseException`](../../doc/models/rules-engine-rest-error-response-exception.md) |

