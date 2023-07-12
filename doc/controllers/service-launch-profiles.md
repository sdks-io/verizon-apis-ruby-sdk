# Service Launch Profiles

```ruby
service_launch_profiles_controller = client.service_launch_profiles
```

## Class Name

`ServiceLaunchProfilesController`

## Methods

* [Create Service Profile](../../doc/controllers/service-launch-profiles.md#create-service-profile)
* [Update Service Profile](../../doc/controllers/service-launch-profiles.md#update-service-profile)
* [Submit Service Profile](../../doc/controllers/service-launch-profiles.md#submit-service-profile)


# Create Service Profile

Creates a service profile that describes the resource requirements of a service.

```ruby
def create_service_profile(account_name,
                           body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |
| `body` | [`CreateServiceProfileRequest`](../../doc/models/create-service-profile-request.md) | Body, Required | Request for creation of a service profile. |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServicesProfileRegistration`](../../doc/models/services-profile-registration.md).

## Example Usage

```ruby
account_name = 'test_account1'

body = CreateServiceProfileRequest.new(
  'mongo-pmec-profile-mdp7',
  'mongodb-customer-prerun',
  '1.0.0',
  nil,
  nil,
  nil,
  nil,
  nil
)

result = service_launch_profiles_controller.create_service_profile(
  account_name,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |


# Update Service Profile

Update the definition of a service profile.

```ruby
def update_service_profile(id,
                           body,
                           account_name: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Unique ID of the service profile.<br>**Constraints**: *Maximum Length*: `36`, *Pattern*: `^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$` |
| `body` | [`CreateServiceProfileRequest`](../../doc/models/create-service-profile-request.md) | Body, Required | Request with new information for updating the service profile. |
| `account_name` | `String` | Header, Optional | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type `String`.

## Example Usage

```ruby
id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

body = CreateServiceProfileRequest.new(
  'mongo-pmec-profile-mdp7',
  'mongodb-customer-prerun',
  '1.0.0',
  nil,
  nil,
  nil,
  nil,
  nil
)

account_name = 'test_account1'

result = service_launch_profiles_controller.update_service_profile(
  id,
  body,
  account_name: account_name
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |


# Submit Service Profile

Helps register a service profile.

```ruby
def submit_service_profile(id,
                           body,
                           account_name: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Unique service profile ID.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |
| `body` | [`ServicesProfileRegistration`](../../doc/models/services-profile-registration.md) | Body, Required | Request for registration of a service profile. |
| `account_name` | `String` | Header, Optional | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServicesProfileRegistrationResult`](../../doc/models/services-profile-registration-result.md).

## Example Usage

```ruby
id = 'eda2cb4e-50ef-4ae8-b304-7d2f0f7a21c1'

body = ServicesProfileRegistration.new(
  '6789409c-12c3-4fc9-b64f-71d1611c4f09',
  'mongo-pmec-profile-mdp7',
  'mongodb-customer-prerun',
  '1.0.0',
  nil,
  '1.0.0',
  ServicesProfileRegistrationStateEnum::DRAFT,
  'acme',
  'acme-user',
  '2022-08-03T03:43:17.504Z',
  nil,
  '2022-08-03T03:43:17.504Z',
  [],
  AccessIntents.new(
    nil
  ),
  PlacementIntents.new(
    nil,
    nil,
    [
      IntentChainItem.new(
        'Compliance',
        { 'deploymentLocations' => [{ 'csp' => 'AWS_WL', 'region' => 'US_WEST_2', 'zoneId' => ['us-west-2-wl1-den-wlz-1'] }] }
      )
    ]
  ),
  []
)

account_name = 'test_account1'

result = service_launch_profiles_controller.submit_service_profile(
  id,
  body,
  account_name: account_name
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

