# Service Metadata

```ruby
service_metadata_controller = client.service_metadata
```

## Class Name

`ServiceMetadataController`

## Methods

* [Create Service Category](../../doc/controllers/service-metadata.md#create-service-category)
* [Create Service Tag](../../doc/controllers/service-metadata.md#create-service-tag)


# Create Service Category

Create a new category within user's organization.

```ruby
def create_service_category(account_name,
                            body,
                            correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `body` | [`Array<Category>`](../../doc/models/category.md) | Body, Required | **Constraints**: *Maximum Items*: `10000` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<Category>`](../../doc/models/category.md).

## Example Usage

```ruby
account_name = 'test_account1'

body = [
  Category.new(
    'MongodbSensor',
    nil,
    'Mongo db Sensor',
    nil,
    nil,
    nil,
    nil,
    nil
  )
]

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = service_metadata_controller.create_service_category(
  account_name,
  body,
  correlation_id: correlation_id
)
```

## Example Response *(as JSON)*

```json
[
  {
    "categoryDescription": "Mongo db Sensor",
    "categoryName": "MongodbSensor",
    "createdBy": "acme-user",
    "createdDate": "2022-08-12T14:44:20.000Z",
    "id": "52da880c-f9d2-4ce5-a24a-edd50d3f2918",
    "lastModifiedDate": "2022-08-12T14:44:20.000Z",
    "updatedBy": "acme-user"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Create Service Tag

Create a new Tag within user's organization.

```ruby
def create_service_tag(account_name,
                       body,
                       correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `body` | [`Array<Tag>`](../../doc/models/tag.md) | Body, Required | **Constraints**: *Maximum Items*: `10000` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<Tag>`](../../doc/models/tag.md).

## Example Usage

```ruby
account_name = 'test_account1'

body = [
  Tag.new(
    'vnsp.mec.verizon.com/servicetype',
    nil,
    'My service.',
    'My service',
    nil,
    nil,
    nil,
    nil
  )
]

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = service_metadata_controller.create_service_tag(
  account_name,
  body,
  correlation_id: correlation_id
)
```

## Example Response *(as JSON)*

```json
[
  {
    "key": "vnsp.mec.verizon.com/servicetype",
    "value": "My service",
    "description": "My service."
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 415 | Unsupported media type. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |

