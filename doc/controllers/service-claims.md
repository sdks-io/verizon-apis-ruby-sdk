# Service Claims

```ruby
service_claims_controller = client.service_claims
```

## Class Name

`ServiceClaimsController`

## Methods

* [List Service Claims](../../doc/controllers/service-claims.md#list-service-claims)
* [Associate Cloud Credential With Service Claim](../../doc/controllers/service-claims.md#associate-cloud-credential-with-service-claim)
* [Mark Service Claim Status as Completed](../../doc/controllers/service-claims.md#mark-service-claim-status-as-completed)
* [Update Service Claim Status](../../doc/controllers/service-claims.md#update-service-claim-status)


# List Service Claims

Fetch all service's claim(s) associated with a service. Service claims are generated based on service's compatibility with different cloud service provider.

```ruby
def list_service_claims(account_name,
                        service_id,
                        correlation_id: nil,
                        claim_status: nil,
                        q: nil,
                        limit: nil,
                        off_set: nil,
                        sort_key: 'createdDate',
                        sort_dir: nil,
                        details_flag: true)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `service_id` | `String` | Template, Required | Auto-generated Id of the claim whose information needs to be fetched.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |
| `claim_status` | `String` | Query, Optional | Queries with claim status on the claims.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `q` | `String` | Query, Optional | Use the comma (,) character to separate multiple values,eg claimType=Public MEC:claims.sandBoxState=NOT_STARTED,STARTED.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!\/,+\-=_:.&*%\s]+$` |
| `limit` | `Integer` | Query, Optional | Number of items to return.<br>**Constraints**: `>= 0`, `<= 1024` |
| `off_set` | `Integer` | Query, Optional | Id of the last respose value in the previous list.<br>**Constraints**: `>= 0`, `<= 1024` |
| `sort_key` | `String` | Query, Optional | Sorts the response by an attribute. Default is createdDate.<br>**Default**: `'createdDate'`<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `sort_dir` | [`SortDirectionEnum`](../../doc/models/sort-direction-enum.md) | Query, Optional | Sorts the response. Use asc for ascending or desc for descending order. The default is desc.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `details_flag` | `TrueClass \| FalseClass` | Query, Optional | Default as true. If it is true then it will return all details.<br>**Default**: `true` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ServiceClaims`](../../doc/models/service-claims.md).

## Example Usage

```ruby
account_name = 'test_account1'

service_id = 'b32321d2-4ee3-458b-a70b-e956525d46c9'

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

claim_status = 'UNVERIFIED'

q = 'claimType=Public MEC:claims.sandBoxState=NOT_STARTED,STARTED'

limit = 256

off_set = 255

sort_key = 'createdDate'

sort_dir = SortDirectionEnum::DESC

details_flag = true

result = service_claims_controller.list_service_claims(
  account_name,
  service_id,
  correlation_id: correlation_id,
  claim_status: claim_status,
  q: q,
  limit: limit,
  off_set: off_set,
  sort_key: sort_key,
  sort_dir: sort_dir,
  details_flag: details_flag
)
```

## Example Response *(as JSON)*

```json
{
  "claimsResList": [
    {
      "claimStatus": "UNVERIFIED",
      "claimType": "PUBLIC_MEC",
      "createdBy": "acme-dev-api-user1",
      "createdDate": "2022-08-03T15:21:30.000Z",
      "endTimeStamp": "0001-01-01T00:00:00.000Z",
      "environment": "AWS_WL",
      "id": "09368e8f-97b6-462f-b309-57d23fd25073",
      "lastModifiedDate": "0001-01-01T00:00:00.000Z",
      "sandBoxState": "NOT_STARTED",
      "sandBoxStatus": "NA",
      "serviceId": "b32321d2-4ee3-458b-a70b-e956525d46c9",
      "startTimeStamp": "0001-01-01T00:00:00.000Z"
    }
  ],
  "count": 1
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Associate Cloud Credential With Service Claim

Associate an existing cloud credential with a service's claim which will be used to connect to user's cloud provider.

```ruby
def associate_cloud_credential_with_service_claim(account_name,
                                                  service_id,
                                                  claim_id,
                                                  body,
                                                  correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `service_id` | `String` | Template, Required | System generated unique identifier of the service which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `claim_id` | `String` | Template, Required | System generated unique identifier for the claim which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `body` | [`CSPProfileIdRequest`](../../doc/models/csp-profile-id-request.md) | Body, Required | - |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AssociateCloudCredentialResult`](../../doc/models/associate-cloud-credential-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

service_id = 'b32321d2-4ee3-458b-a70b-e956525d46c9'

claim_id = '58296746-57ee-44f8-8107-399b61d58356'

body = CSPProfileIdRequest.new(
  '2e13f3a1-287f-4c63-9218-d026bf1bda32'
)

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = service_claims_controller.associate_cloud_credential_with_service_claim(
  account_name,
  service_id,
  claim_id,
  body,
  correlation_id: correlation_id
)
```

## Example Response *(as JSON)*

```json
{
  "message": "CSP Profile got associated with current claim successfully"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not Found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Mark Service Claim Status as Completed

Mark a service's claim status as complete post successful verification of sandbox testing in the respective sandbox environment.

```ruby
def mark_service_claim_status_as_completed(account_name,
                                           service_id,
                                           claim_id,
                                           correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `service_id` | `String` | Template, Required | System generated unique identifier of the service which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `claim_id` | `String` | Template, Required | System generated unique identifier of the claim which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
account_name = 'test_account1'

service_id = 'b32321d2-4ee3-458b-a70b-e956525d46c9'

claim_id = '58296746-57ee-44f8-8107-399b61d58356'

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = service_claims_controller.mark_service_claim_status_as_completed(
  account_name,
  service_id,
  claim_id,
  correlation_id: correlation_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not Found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |


# Update Service Claim Status

Using this API user can update service's claim status as complete/verified etc.

```ruby
def update_service_claim_status(account_name,
                                service_id,
                                claim_id,
                                body,
                                correlation_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Required | User account name.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `service_id` | `String` | Template, Required | System generated unique identifier of the service which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `claim_id` | `String` | Template, Required | System generated unique identifier of the claim which user is using.<br>**Constraints**: *Maximum Length*: `100`, *Pattern*: `^[A-Za-z0-9_-]+$` |
| `body` | [`ClaimStatusRequest`](../../doc/models/claim-status-request.md) | Body, Required | - |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^[a-zA-Z0-9-]+$` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
account_name = 'test_account1'

service_id = 'b32321d2-4ee3-458b-a70b-e956525d46c9'

claim_id = '58296746-57ee-44f8-8107-399b61d58356'

body = ClaimStatusRequest.new(
  ClaimStatusEnum::VERIFIED
)

correlation_id = '9958f2f8-c4e3-46e0-8982-356de6515ae9'

result = service_claims_controller.update_service_claim_status(
  account_name,
  service_id,
  claim_id,
  body,
  correlation_id: correlation_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 401 | Unauthorized. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 404 | Not Found. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceOnboardingResultErrorException`](../../doc/models/edge-service-onboarding-result-error-exception.md) |

