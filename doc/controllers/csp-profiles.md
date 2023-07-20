# CSP Profiles

```ruby
csp_profiles_controller = client.csp_profiles
```

## Class Name

`CSPProfilesController`

## Methods

* [Create Cloud Credential](../../doc/controllers/csp-profiles.md#create-cloud-credential)
* [Remove Cloud Credential](../../doc/controllers/csp-profiles.md#remove-cloud-credential)
* [Fetch Cloud Credential Details](../../doc/controllers/csp-profiles.md#fetch-cloud-credential-details)


# Create Cloud Credential

Create a new cloud credential within user's organization.

```ruby
def create_cloud_credential(account_name,
                            body,
                            correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `body` | [`CSPProfile`](../../doc/models/csp-profile.md) | Body, Required | - |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CSPProfile`](../../doc/models/csp-profile.md).

## Example Usage

```ruby
account_name = 'test_account1'

body = CSPProfile.new(
  'dev-api-csp-profile-mdp',
  nil,
  nil,
  nil,
  'vz-cve',
  CSPProfileTypeEnum::AWS,
  AwsCspProfile.new(
    AwsCspProfileCredTypeEnum::ACCESS_KEY,
    'XXXXX',
    'XXXXX',
    nil,
    nil,
    nil
  ),
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil
)

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = csp_profiles_controller.create_cloud_credential(
  account_name,
  body,
  correlation_id: correlation_id
)
```

## Example Response *(as JSON)*

```json
{
  "awsCspProfile": {
    "accessKey": "XXXXX",
    "credType": "ACCESS_KEY",
    "secretKey": "XXXXX"
  },
  "createdBy": "acme-user",
  "createdDate": "2022-08-03T13:59:51.000Z",
  "cspProfileName": "dev-api-csp-profile-mdp",
  "customerID": "acme",
  "id": "72e35c51-098e-4388-9055-2967bbd9be48",
  "lastModifiedBy": "acme-user",
  "lastModifiedDate": "2022-08-03T13:59:51.000Z",
  "projectName": "vz-cve",
  "type": "AWS"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 403 | Forbidden. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 429 | Too many requests. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| Default | Forbidden. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Remove Cloud Credential

Remove a cloud credential from user's organization.

```ruby
def remove_cloud_credential(account_name,
                            id,
                            correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `id` | `String` | Template, Required | CSP Profile Id. |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`EdgeServiceOnboardingDeleteResult`](../../doc/models/edge-service-onboarding-delete-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

id = '72e35c51-098e-4388-9055-2967bbd9be48'

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = csp_profiles_controller.remove_cloud_credential(
  account_name,
  id,
  correlation_id: correlation_id
)
```

## Example Response *(as JSON)*

```json
{
  "message": "Csp Profile deleted Successfully",
  "subStatus": "Csp Profile Delete - success"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not Found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Fetch Cloud Credential Details

Fetch available cloud credentials within user's organization.

```ruby
def fetch_cloud_credential_details(account_name,
                                   correlation_id: nil,
                                   q: nil,
                                   limit: nil,
                                   off_set: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |
| `q` | `String` | Query, Optional | Use the coloumn (:) character to separate multiple query params eg type=AWS:awsCspProfile.credType=ACCESS_KEY,ROLE_ARN:state=UNVERIFIED,VERIFIED.<br>**Constraints**: *Maximum Length*: `2048`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!\/,+\-=_:.&*%\s]+$` |
| `limit` | `Integer` | Query, Optional | Number of items to return.<br>**Constraints**: `>= 0`, `<= 1024` |
| `off_set` | `Integer` | Query, Optional | Id of the last respose value in the previous list.<br>**Constraints**: `>= 0`, `<= 1024` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CSPProfileData`](../../doc/models/csp-profile-data.md).

## Example Usage

```ruby
account_name = 'test_account1'

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

q = 'cspProfileName=dev-api-csp-profile-mdp'

limit = 256

off_set = 255

result = csp_profiles_controller.fetch_cloud_credential_details(
  account_name,
  correlation_id: correlation_id,
  q: q,
  limit: limit,
  off_set: off_set
)
```

## Example Response *(as JSON)*

```json
{
  "count": 1,
  "cspProfileList": [
    {
      "awsCspProfile": {
        "accessKey": "XXXXX",
        "credType": "ACCESS_KEY",
        "secretKey": "XXXXX"
      },
      "createdBy": "acme-user",
      "createdDate": "2022-08-03T13:59:51.000Z",
      "cspProfileName": "dev-api-csp-profile-mdp",
      "customerID": "acme",
      "id": "72e35c51-098e-4388-9055-2967bbd9be48",
      "lastModifiedBy": "acme-user",
      "lastModifiedDate": "2022-08-03T13:59:51.000Z",
      "projectName": "vz-cve",
      "type": "AWS"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 403 | Forbidden. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 429 | Too many requests. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| Default | Forbidden. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |

