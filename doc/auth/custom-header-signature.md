
# Custom Header Signature



Documentation for accessing and setting credentials for vz-m2m-session_token.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| VZ-M2M-Token | `String` | The VZ-M2M session token from [Getting Started](/content/thingspace-portal/documentation/apis/connectivity-management/get-started.html) | `vz_m2_m_token` |



**Note:** Auth credentials can be set using `VzM2mSessionTokenCredentials` object, passed in as named parameter `vz_m2m_session_token_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = VerizonThingSpaceQualityOfServiceApiEndpoints::Client.new(
  vz_m2m_session_token_credentials: VzM2mSessionTokenCredentials.new(
    vz_m2_m_token: 'VZ-M2M-Token'
  )
)
```


