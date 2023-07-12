# Service Instances

```ruby
service_instances_controller = client.service_instances
```

## Class Name

`ServiceInstancesController`

## Methods

* [Retrieve Service Instance](../../doc/controllers/service-instances.md#retrieve-service-instance)
* [List Services Instances](../../doc/controllers/service-instances.md#list-services-instances)


# Retrieve Service Instance

Retrieve information of a service instance.

```ruby
def retrieve_service_instance(service_instance_id,
                              account_name,
                              cluster: false)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_instance_id` | `String` | Template, Required | Unique Id of the service instance.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$` |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `cluster` | `TrueClass \| FalseClass` | Query, Optional | **Default**: `false` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceInstancesResultSetItem`](../../doc/models/service-instances-result-set-item.md).

## Example Usage

```ruby
service_instance_id = 'e0abe65f-b294-4673-a60c-d31f26ca7a8c'

account_name = 'test_account1'

cluster = false

result = service_instances_controller.retrieve_service_instance(
  service_instance_id,
  account_name,
  cluster: cluster
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


# List Services Instances

Retrieve all instances for all services.

```ruby
def list_services_instances(account_name,
                            offset: nil,
                            state: nil,
                            limit: nil,
                            searchbyname: nil,
                            listofstate: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `offset` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `state` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `limit` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64` |
| `searchbyname` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `listofstate` | `Array<String>` | Query, Optional | **Constraints**: *Maximum Items*: `100`, *Maximum Length*: `128`, *Pattern*: `^(.*)$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceInstancesResult`](../../doc/models/service-instances-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

state = 'NOT_READY'

searchbyname = 'PQAService-Demo-08182022'

result = service_instances_controller.list_services_instances(
  account_name,
  state: state,
  searchbyname: searchbyname
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

