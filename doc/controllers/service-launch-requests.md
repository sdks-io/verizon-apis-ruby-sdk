# Service Launch Requests

```ruby
service_launch_requests_controller = client.service_launch_requests
```

## Class Name

`ServiceLaunchRequestsController`

## Methods

* [Create Service Launch Request](../../doc/controllers/service-launch-requests.md#create-service-launch-request)
* [Get Service Launch Request](../../doc/controllers/service-launch-requests.md#get-service-launch-request)
* [Submit Service Launch Request](../../doc/controllers/service-launch-requests.md#submit-service-launch-request)


# Create Service Launch Request

Create a request for launching a service.

```ruby
def create_service_launch_request(account_name,
                                  user_name,
                                  correlation_id: nil,
                                  body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `user_name` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `body` | [`CreateServiceLaunchRequest`](../../doc/models/create-service-launch-request.md) | Body, Optional | Request for launching a service. |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceLaunchRequestResult`](../../doc/models/service-launch-request-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

user_name = 'acme-user'

correlation_id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

body = CreateServiceLaunchRequest.new(
  'MdpTest3',
  '6789409c-12c3-4fc9-b64f-71d1611c4f09',
  '6789409c-12c3-4fc9-b64f-71d1611c4f09',
  'mongodbdemo0710',
  '2.5.6'
)

result = service_launch_requests_controller.create_service_launch_request(
  account_name,
  user_name,
  correlation_id: correlation_id,
  body: body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 404 | HTTP 404 Not found. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |


# Get Service Launch Request

Get information related to a service launch request.

```ruby
def get_service_launch_request(account_name,
                               user_name,
                               id: nil,
                               correlation_id: nil,
                               name: nil,
                               offset: nil,
                               limit: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `user_name` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `id` | `UUID \| String` | Query, Optional | Service launch request Id. |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `name` | `String` | Query, Optional | Service request name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `offset` | `Integer` | Query, Optional | **Constraints**: `>= 0`, `<= 1024` |
| `limit` | `Integer` | Query, Optional | **Constraints**: `>= 0`, `<= 1024` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceLaunchRequestsResult`](../../doc/models/service-launch-requests-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

user_name = 'acme-user'

id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

correlation_id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

name = 'MdpTest3'

offset = 15

limit = 16

result = service_launch_requests_controller.get_service_launch_request(
  account_name,
  user_name,
  id: id,
  correlation_id: correlation_id,
  name: name,
  offset: offset,
  limit: limit
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 403 | Forbidden. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 404 | Not found. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 415 | Unsupported media type. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 429 | Too many requests. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | Unexpected error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |


# Submit Service Launch Request

This endpoint allows the user to submit a service request that describes the resource requirements of a service. This API submit an object of the service request and moves it to STATE from “DRAFT”  to “INSTANTIATED” and triggers the launch flow.

```ruby
def submit_service_launch_request(id,
                                  account_name,
                                  user_name,
                                  correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Template, Required | A unique Id assigned to the request by system calling API. |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |
| `user_name` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceLaunchRequestResult`](../../doc/models/service-launch-request-result.md).

## Example Usage

```ruby
id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

account_name = 'test_account1'

user_name = 'acme-user'

correlation_id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

result = service_launch_requests_controller.submit_service_launch_request(
  id,
  account_name,
  user_name,
  correlation_id: correlation_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 412 | Precondition Failed. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |

