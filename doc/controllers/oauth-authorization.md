# OAuth Authorization

```ruby
oauth_authorization_controller = client.oauth_authorization
```

## Class Name

`OauthAuthorizationController`


# Request Token

Create a new OAuth 2 token.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def request_token(authorization,
                  scope: nil,
                  _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `scope` | `String` | Form, Optional | Requested scopes as a space-delimited list. |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Server

`Server::OAUTH_SERVER`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`OauthToken`](../../doc/models/oauth-token.md).

## Example Usage

```ruby
authorization = 'Authorization8'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = oauth_authorization_controller.request_token(
  authorization,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OauthProviderException`](../../doc/models/oauth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OauthProviderException`](../../doc/models/oauth-provider-exception.md) |

