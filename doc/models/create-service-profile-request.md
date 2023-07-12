
# Create Service Profile Request

## Structure

`CreateServiceProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | Name for a service profile.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `service_name` | `String` | Optional | Service being deployed.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `service_version` | `String` | Optional | Service version being deployed.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `customer_id` | `String` | Optional | Id of particular customer.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |
| `linked_service_instances` | [`Array<LinkedServiceInstance>`](../../doc/models/linked-service-instance.md) | Optional | - |
| `access_intents` | [`AccessIntents`](../../doc/models/access-intents.md) | Optional | - |
| `placement_intents` | [`PlacementIntents`](../../doc/models/placement-intents.md) | Optional | - |
| `deployment_locations` | [`Array<DeploymentLocation>`](../../doc/models/deployment-location.md) | Optional | - |

## Example (as JSON)

```json
{
  "name": "mongo-pmec-profile-mdp7",
  "serviceName": "mongodb-customer-prerun",
  "serviceVersion": "1.0.0",
  "customerID": "customerID8",
  "linkedServiceInstances": [
    {
      "id": "00000a3b-0000-0000-0000-000000000000"
    },
    {
      "id": "00000a3c-0000-0000-0000-000000000000"
    }
  ]
}
```

