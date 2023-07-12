
# Service Launch Request Result

## Structure

`ServiceLaunchRequestResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique service profile ID. |
| `name` | `String` | Optional | Service request name.<br>**Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `service_name` | `String` | Optional | Service being deployed.<br>**Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `state` | [`ServiceLaunchStateEnum`](../../doc/models/service-launch-state-enum.md) | Optional | **Constraints**: *Maximum Length*: `60`, *Pattern*: `^[\w\d_\.\#\$\%\|^\&\*\@\!\-]{1,64}$` |
| `service_version` | `String` | Optional | Service version being deployed.<br>**Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `service_id` | `String` | Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `service_profile_id` | `String` | Optional | The service profile ID that is created during the post-service API.<br>**Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `csp_profile_id` | `String` | Optional | **Constraints**: *Maximum Length*: `50`, *Pattern*: `^(.*)$` |
| `config_files` | [`Array<ConfigFileItem>`](../../doc/models/config-file-item.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `linked_service_instances` | [`Array<LinkedServiceInstance>`](../../doc/models/linked-service-instance.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `updated_by` | `String` | Optional | **Constraints**: *Maximum Length*: `500`, *Pattern*: `^(.*)$` |

## Example (as JSON)

```json
{
  "createdAt": "2022-08-19T13:06:26.541Z",
  "id": "f865bb78-dd8b-4261-83ed-c3e3e081fe50",
  "linkedServiceInstances": [
    {
      "id": "e0abe65f-b294-4673-a60c-d31f26ca7a8c"
    }
  ],
  "name": "mdp_launch_request_908762",
  "serviceId": "8a29c449-f88e-4b79-8248-2c2e5e86fd98",
  "serviceName": "mongodb-customer-prerun-2",
  "serviceProfileId": "2c5c1fb6-a1fe-4de3-8a6e-e2d0663eacf5",
  "serviceVersion": "2.3.4",
  "state": "INSTANTIATED",
  "updatedAt": "2022-08-19T13:07:36.242Z"
}
```

