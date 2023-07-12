
# Service Onboarding Additional Params

## Structure

`ServiceOnboardingAdditionalParams`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Optional | Key properties/metadata attribute.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!\/,+\-=_:.&*%\s]+$` |
| `value` | `String` | Optional | Properties/metadata value attribute.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!\/,+\-=_:.&*%\s]+$` |

## Example (as JSON)

```json
{
  "key": "vnsp.mec.domain",
  "value": "IOT"
}
```

