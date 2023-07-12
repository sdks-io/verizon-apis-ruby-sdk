
# Services Profile Registration

## Structure

`ServicesProfileRegistration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Id of the service profile. |
| `name` | `String` | Optional | Name for a service profile.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `service_name` | `String` | Optional | Service being deployed.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `service_version` | `String` | Optional | Service version being deployed.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `current_version` | `String` | Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `version` | `String` | Optional | **Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `state` | [`ServicesProfileRegistrationStateEnum`](../../doc/models/services-profile-registration-state-enum.md) | Optional | - |
| `customer_id` | `String` | Optional | Id of particular customer.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `created_by` | `String` | Optional | **Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `created_at` | `String` | Optional | **Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `last_updated_by` | `String` | Optional | **Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `last_updated_at` | `String` | Optional | **Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `linked_service_instances` | [`Array<LinkedServiceInstance>`](../../doc/models/linked-service-instance.md) | Optional | - |
| `access_intents` | [`AccessIntents`](../../doc/models/access-intents.md) | Optional | - |
| `placement_intents` | [`PlacementIntents`](../../doc/models/placement-intents.md) | Optional | - |
| `deployment_locations` | [`Array<DeploymentLocation>`](../../doc/models/deployment-location.md) | Optional | - |

## Example (as JSON)

```json
{
  "accessIntents": {},
  "createdAt": "2022-08-03T03:43:17.504Z",
  "createdBy": "acme-user",
  "customerID": "acme",
  "deploymentLocations": [],
  "id": "6789409c-12c3-4fc9-b64f-71d1611c4f09",
  "lastUpdatedAt": "2022-08-03T03:43:17.504Z",
  "linkedServiceInstances": [],
  "name": "mongo-pmec-profile-mdp7",
  "placementIntents": {
    "intentChain": [
      {
        "input": {
          "deploymentLocations": [
            {
              "csp": "AWS_WL",
              "region": "US_WEST_2",
              "zoneId": [
                "us-west-2-wl1-den-wlz-1"
              ]
            }
          ]
        },
        "name": "Compliance"
      }
    ]
  },
  "serviceName": "mongodb-customer-prerun",
  "serviceVersion": "1.0.0",
  "state": "DRAFT",
  "version": "1.0.0",
  "currentVersion": "currentVersion0"
}
```

