
# Flow Info

## Structure

`FlowInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `flow_server` | `String` | Optional | The IPv6 IP address and port used to connect to the server |
| `flow_device` | `String` | Optional | The IPv6 IP address and port used by the device |
| `flow_direction` | `String` | Optional | The direction the data is flowing. UPLINK if from the device, DOWNLINK is to the device |
| `flow_protocol` | `String` | Optional | The data protocol used for the connection |
| `qci_option` | `String` | Optional | The QoS level of the connection. This will be Standard or Premium |

## Example (as JSON)

```json
{
  "flowServer": "[IPv6 address]:port",
  "flowDevice": "[IPv6 address]:port",
  "flowDirection": "UPLINK",
  "flowProtocol": "UDP",
  "qciOption": "Premium"
}
```

