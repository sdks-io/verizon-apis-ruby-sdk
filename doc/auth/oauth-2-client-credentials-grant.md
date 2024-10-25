
# OAuth 2 Client Credentials Grant



Documentation for accessing and setting credentials for thingspace_oauth.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| OAuthClientId | `String` | OAuth 2 Client ID | `oauth_client_id` |
| OAuthClientSecret | `String` | OAuth 2 Client Secret | `oauth_client_secret` |
| OAuthToken | `OauthToken` | Object for storing information about the OAuth token | `oauth_token` |
| OAuthScopes | `Array[OauthScopeThingspaceOauthEnum]` | List of scopes that apply to the OAuth token | `oauth_scopes` |
| OAuthTokenProvider | `proc { \| OAuthToken, OAuth2 \| }` | Registers a callback for oAuth Token Provider used for automatic token fetching/refreshing. | `oauth_token_provider` |
| OAuthOnTokenUpdate | `proc { \| OAuthToken \| }` | Registers a callback for token update event. | `oauth_on_token_update` |
| OAuthClockSkew | `Integer` | Clock skew time in seconds applied while checking the OAuth Token expiry. | `oauth_clock_skew` |



**Note:** Auth credentials can be set using `ThingspaceOauthCredentials` object, passed in as named parameter `thingspace_oauth_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must initialize the client with *OAuth 2.0 Client Credentials Grant* credentials as shown in the following code snippet. This will fetch the OAuth token automatically when any of the endpoints, requiring *OAuth 2.0 Client Credentials Grant* autentication, are called.

```ruby
client = Verizon::Client.new(
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeThingspaceOauthEnum::DISCOVERYREAD,
      OauthScopeThingspaceOauthEnum::SERVICEPROFILEREAD
    ]
  )
)
```



Your application can also manually provide an OAuthToken using the setter `in` object. This function takes in an instance of OAuthToken containing information for authorizing client requests and refreshing the token itself.

You must have initialized the client with scopes for which you need permission to access.

### Scopes

Scopes enable your application to only request access to the resources it needs while enabling users to control the amount of access they grant to your application. Available scopes are defined in the [`OauthScopeThingspaceOauthEnum`](../../doc/models/oauth-scope-thingspace-oauth-enum.md) enumeration.

| Scope Name | Description |
|  --- | --- |
| `DISCOVERYREAD` | Grant read-only access to discovery data |
| `SERVICEPROFILEREAD` | Grant read-only access to service profile data |
| `SERVICEPROFILEWRITE` | Grant write access to service profile data |
| `SERVICEREGISTRYREAD` | Grant read-only access to Service registry data |
| `SERVICEREGISTRYWRITE` | Grant write access to Service registry data |
| `TS_MEC_FULLACCESS` | Full access for /serviceprofiles and /serviceendpoints. |
| `TS_MEC_LIMITACCESS` | Limited access. Will not allow use of /serviceprofiles and /serviceendpoints but will allow discovery. |
| `TS_APPLICATION_RO` |  |
| `EDGEDISCOVERYREAD` | Read access to the discovery service |
| `EDGESERVICEPROFILEREAD` | Read access to the service profile service |
| `EDGESERVICEPROFILEWRITE` | Write access to the service profile service |
| `EDGESERVICEREGISTRYREAD` | Read access to the service registry service |
| `EDGESERVICEREGISTRYWRITE` | Write access to the service registry service |
| `READ` | read access |
| `WRITE` | read/write access |

### Adding OAuth Token Update Callback

Whenever the OAuth Token gets updated, the provided callback implementation will be executed. For instance, you may use it to store your access token whenever it gets updated.

```ruby
client = Verizon::Client.new(
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeThingspaceOauthEnum::DISCOVERYREAD,
      OauthScopeThingspaceOauthEnum::SERVICEPROFILEREAD
    ],
    oauth_on_token_update: Proc.new { | oauth_token | 
                              # Add the callback handler to perform operations like save to DB or file etc.
                              # It will be triggered whenever the token gets updated
                              save_token_to_database(oauth_token)
                            }
  )
)
```

### Adding Custom OAuth Token Provider



```ruby
def oauth_token_provider(last_oauth_token, auth_manager)
  # Add the callback handler to provide a new OAuth token
  # It will be triggered whenever the last provided o_auth_token is null or expired
  oauth_token = load_token_from_database()
  oauth_token = auth_manager.fetch_token() if oauth_token is nil?
  return oauth_token
end

_oauth_token_provider = proc do | last_oauth_token, auth_manager |
  oauth_token_provider(last_oauth_token, auth_manager)
end


client = Verizon::Client.new(
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeThingspaceOauthEnum::DISCOVERYREAD,
      OauthScopeThingspaceOauthEnum::SERVICEPROFILEREAD
    ],
    oauth_token_provider: _oauth_token_provider
  )
)
```


