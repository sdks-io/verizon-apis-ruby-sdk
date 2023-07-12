# Service Endpoints

```ruby
service_endpoints_controller = client.service_endpoints
```

## Class Name

`ServiceEndpointsController`

## Methods

* [List Optimal Service Endpoints](../../doc/controllers/service-endpoints.md#list-optimal-service-endpoints)
* [Register Service Endpoints](../../doc/controllers/service-endpoints.md#register-service-endpoints)
* [List All Service Endpoints](../../doc/controllers/service-endpoints.md#list-all-service-endpoints)
* [Get Service Endpoint](../../doc/controllers/service-endpoints.md#get-service-endpoint)
* [Update Service Endpoint](../../doc/controllers/service-endpoints.md#update-service-endpoint)
* [Deregister Service Endpoint](../../doc/controllers/service-endpoints.md#deregister-service-endpoint)


# List Optimal Service Endpoints

Returns a list of optimal Service Endpoints that client devices can connect to. **Note:** If a query is sent with all of the parameters, it will fail with a "400" error. You can search based on the following parameter combinations - Region plus Service Endpoints IDs and Subscriber density (density is optional but recommended), Region plus Service Endpoints IDs and UEIdentity(Including UEIdentity Type) and Service Endpoints IDs plus UEIdentity(Including UEIdentity Type).

```ruby
def list_optimal_service_endpoints(region: nil,
                                   subscriber_density: nil,
                                   ue_identity_type: nil,
                                   ue_identity: nil,
                                   service_endpoints_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `region` | `String` | Query, Optional | MEC region name. Current valid values are US_WEST_2 and US_EAST_1. |
| `subscriber_density` | `Integer` | Query, Optional | Minimum number of 4G/5G subscribers per square kilometer.<br>**Constraints**: `>= 1`, `<= 100` |
| `ue_identity_type` | [`UserEquipmentIdentityTypeEnum`](../../doc/models/user-equipment-identity-type-enum.md) | Query, Optional | Type of User Equipment identifier used in `UEIdentity`. |
| `ue_identity` | `String` | Query, Optional | The identifier value for User Equipment. The type of identifier is defined by the 'UEIdentityType' parameter. The`IPAddress`format can be IPv4 or IPv6. |
| `service_endpoints_ids` | `String` | Query, Optional | A system-defined string identifier representing one or more registered Service Endpoints. |

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ListOptimalServiceEndpointsResult`](../../doc/models/list-optimal-service-endpoints-result.md).

## Example Usage

```ruby
region = 'US_WEST_2'

ue_identity_type = UserEquipmentIdentityTypeEnum::IPADDRESS

ue_identity = '2600:1010:b1d0:0000:0000:0000:0000:0012'

service_endpoints_ids = '43f3f7bb-d6c5-4bad-b081-9a3a0df2db98'

result = service_endpoints_controller.list_optimal_service_endpoints(
  region: region,
  ue_identity_type: ue_identity_type,
  ue_identity: ue_identity,
  service_endpoints_ids: service_endpoints_ids
)
```

## Example Response *(as JSON)*

```json
{
  "serviceEndpoints": [
    {
      "ern": "LASVEGAS_NV_WL",
      "serviceEndpoint": {
        "URI": "http://base_path/some_segment/id",
        "FQDN": "thingtest.verizon.com",
        "IPv4Address": "192.168.11.10",
        "IPv6Address": "2001:0db8:85a3:0000:0000:8a2e:0370:1234",
        "port": 1234
      },
      "applicationServerProviderId": "AWS",
      "applicationId": "IogspaceJan15",
      "serviceDescription": "ThieIt"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |


# Register Service Endpoints

Register Service Endpoints of a deployed application to specified MEC Platforms.

```ruby
def register_service_endpoints(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array<ResourcesEdgeHostedServiceWithProfileId>`](../../doc/models/resources-edge-hosted-service-with-profile-id.md) | Body, Required | An array of Service Endpoint data for a deployed application. The request body passes all of the needed parameters to create a service endpoint. Parameters will be edited here rather than the **Parameters** section above. The `ern`,`applicationServerProviderId`, `applicationId` and `serviceProfileID` parameters are required. **Note:** Currently, the only valid value for `applicationServerProviderId`is **AWS**. Also, if you do not know one of the optional values (i.e. URI), you can erase the line from the query by back-spacing over it.<br>**Constraints**: *Maximum Items*: `100` |

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RegisterServiceEndpointResult`](../../doc/models/register-service-endpoint-result.md).

## Example Usage

```ruby
body = [
  ResourcesEdgeHostedServiceWithProfileId.new(
    'us-east-1-wl1-atl-wlz-1',
    ResourcesServiceEndpoint.new(
      'http://base_path/some_segment/id',
      'thingtest.verizon.com',
      '192.168.11.10',
      '2001:0db8:85a3:0000:0000:8a2e:0370:1234',
      1234
    ),
    'AWS',
    'IogspaceJan15',
    'ThieIt',
    '4054ea9a-593e-4776-b488-697b1bfa4f3b'
  )
]

result = service_endpoints_controller.register_service_endpoints(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |


# List All Service Endpoints

Returns a list of all registered service endpoints.

```ruby
def list_all_service_endpoints
```

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ListAllServiceEndpointsResult`](../../doc/models/list-all-service-endpoints-result.md).

## Example Usage

```ruby
result = service_endpoints_controller.list_all_service_endpoints
```

## Example Response *(as JSON)*

```json
{
  "status": "success",
  "data": [
    "serviceEndpointsId"
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |


# Get Service Endpoint

Returns endpoint information for all Service Endpoints registered to a specified serviceEndpointId.

```ruby
def get_service_endpoint(service_endpoints_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_endpoints_id` | `String` | Template, Required | A system-defined string identifier representing one or more registered Service Endpoints. |

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<ResourcesEdgeHostedServiceWithProfileId>`](../../doc/models/resources-edge-hosted-service-with-profile-id.md).

## Example Usage

```ruby
service_endpoints_id = '43f3f7bb-d6c5-4bad-b081-9a3a0df2db98'

result = service_endpoints_controller.get_service_endpoint(service_endpoints_id)
```

## Example Response *(as JSON)*

```json
[
  {
    "serviceEndpoint": {
      "FQDN": "thingtest.verizon.com",
      "IPv4Address": "192.168.11.10",
      "IPv6Address": "2001:0db8:85a3:0000:0000:8a2e:0370:1234",
      "port": 1234,
      "URI": "http://base_path/some_segment/id"
    },
    "applicationId": "IogspaceJan15",
    "serviceDescription": "ThieIt",
    "applicationServerProviderId": "AWS",
    "ern": "us-east-1-wl1-atl-wlz-1",
    "serviceProfileID": "4054ea9a-593e-4776-b488-697b1bfa4f3b"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |


# Update Service Endpoint

Update registered Service Endpoint information.

```ruby
def update_service_endpoint(service_endpoints_id,
                            body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_endpoints_id` | `String` | Template, Required | A system-defined string identifier representing one or more registered Service Endpoints. |
| `body` | [`Array<ResourcesEdgeHostedServiceWithProfileId>`](../../doc/models/resources-edge-hosted-service-with-profile-id.md) | Body, Required | Data needed for Service Endpoint information. The request body passes the rest of the needed parameters to create a service endpoint. Parameters other than `serviceEndpointsId` will be edited here rather than the **Parameters** section above. The `ern`,`applicationServerProviderId` and `applicationId` parameters are required. **Note:** Currently, the only valid value for `applicationServerProviderId`is **AWS**.<br>**Constraints**: *Maximum Items*: `100` |

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`UpdateServiceEndpointResult`](../../doc/models/update-service-endpoint-result.md).

## Example Usage

```ruby
service_endpoints_id = '43f3f7bb-d6c5-4bad-b081-9a3a0df2db98'

body = [
  ResourcesEdgeHostedServiceWithProfileId.new(
    'us-east-1-wl1-atl-wlz-1',
    ResourcesServiceEndpoint.new(
      'http://base_path/some_segment/id',
      'thingtest.verizon.com',
      '192.168.11.10',
      '2001:0db8:85a3:0000:0000:8a2e:0370:1234',
      1234
    ),
    'AWS',
    'IogspaceJan15',
    'ThieIt',
    '4054ea9a-593e-4776-b488-697b1bfa4f3b'
  )
]

result = service_endpoints_controller.update_service_endpoint(
  service_endpoints_id,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "status": "Success",
  "message": "EdgeAppServices are updated"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |


# Deregister Service Endpoint

Deregister an application's Service Endpoint from the MEC Platform(s).

```ruby
def deregister_service_endpoint(service_endpoints_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_endpoints_id` | `String` | Template, Required | A system-defined string identifier representing one or more registered Service Endpoints. |

## Requires scope

`EDGEDISCOVERYREAD`, `EDGESERVICEPROFILEREAD`, `EDGESERVICEPROFILEWRITE`, `EDGESERVICEREGISTRYREAD`, `EDGESERVICEREGISTRYWRITE`, `TS_APPLICATION_RO`, `TS_MEC_FULLACCESS`, `TS_MEC_LIMITACCESS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeregisterServiceEndpointResult`](../../doc/models/deregister-service-endpoint-result.md).

## Example Usage

```ruby
service_endpoints_id = '43f3f7bb-d6c5-4bad-b081-9a3a0df2db98'

result = service_endpoints_controller.deregister_service_endpoint(service_endpoints_id)
```

## Example Response *(as JSON)*

```json
{
  "status": "Success",
  "message": "EdgeAppServicesID Deleted"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | HTTP 400 Bad Request. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| 401 | HTTP 401 Unauthorized. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |
| Default | HTTP 500 Internal Server Error. | [`EdgeDiscoveryResultException`](../../doc/models/edge-discovery-result-exception.md) |

