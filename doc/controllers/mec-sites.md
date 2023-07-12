# MEC Sites

```ruby
mec_sites_controller = client.mec_sites
```

## Class Name

`MECSitesController`

## Methods

* [List MEC Site Locations](../../doc/controllers/mec-sites.md#list-mec-site-locations)
* [List ERN Cluster Namespaces](../../doc/controllers/mec-sites.md#list-ern-cluster-namespaces)


# List MEC Site Locations

Supports fetching MEC locations so the user can view the city.

```ruby
def list_mec_site_locations(account_name: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Header, Optional | User account name.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[A-Za-z0-9]` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`MECSiteLocationsResult`](../../doc/models/mec-site-locations-result.md).

## Example Usage

```ruby
account_name = 'test_account1'

result = mec_sites_controller.list_mec_site_locations(account_name: account_name)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Response. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |


# List ERN Cluster Namespaces

Retrieve all clusters for the customer.

```ruby
def list_ern_cluster_namespaces(user_id,
                                role,
                                customer_id,
                                request_id,
                                ern: nil,
                                name: nil,
                                offset: nil,
                                limit: nil,
                                correlation_id: nil,
                                cluster_state: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_id` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `role` | `String` | Header, Required | **Constraints**: *Maximum Length*: `500` |
| `customer_id` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `request_id` | `String` | Header, Required | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `ern` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `name` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `offset` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `limit` | `String` | Query, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `correlation_id` | `String` | Header, Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `cluster_state` | [`ClusterStateEnum`](../../doc/models/cluster-state-enum.md) | Query, Optional | **Constraints**: *Maximum Length*: `32` |

## Server

`Server::SERVICES`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ClustersNamespaces`](../../doc/models/clusters-namespaces.md).

## Example Usage

```ruby
user_id = 'userId0'

role = 'role6'

customer_id = 'customerId6'

request_id = 'requestId2'

result = mec_sites_controller.list_ern_cluster_namespaces(
  user_id,
  role,
  customer_id,
  request_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 404 | Not found. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| 500 | Internal Server Error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |
| Default | Unexpected error. | [`EdgeServiceLaunchResultException`](../../doc/models/edge-service-launch-result-exception.md) |

