
# Getting Started with Verizon ThingSpace Quality of Service API endpoints

## Introduction

These are the endpoints to subscribe to and end the subscription for Verizon's ThingSpace Quality of Service API. These endpoints use Service Capability Exposure Function or SCEF, and rely on callbacks for asynchronous requests. **Note:** This example is in YAML and will need to be converted to JSON to use as a spec file.

## Install the Package

Install the gem from the command line:

```ruby
gem install sdksio-verizon-apis-sdk -v 1.6.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'sdksio-verizon-apis-sdk', '1.6.0'
```

For additional gem details, see the [RubyGems page for the sdksio-verizon-apis-sdk gem](https://rubygems.org/gems/sdksio-verizon-apis-sdk/versions/1.6.0).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `vz_m_2_m_token` | `String` | The VZ-M2M session token from [Getting Started](/content/thingspace-portal/documentation/apis/connectivity-management/get-started.html) |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `thingspace_oauth_credentials` | [`ThingspaceOauthCredentials`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| `vz_m_2_m_session_token_credentials` | [`VzM2mSessionTokenCredentials`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/auth/custom-header-signature.md) | The credential object for Custom Header Signature |

The API client can be initialized as follows:

```ruby
client = VerizonThingSpaceQualityOfServiceApiEndpoints::Client.new(
  vz_m2_m_token: 'VZ-M2M-Token',
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  vz_m2m_session_token_credentials: VzM2mSessionTokenCredentials.new(
    vz_m2_m_token: 'VZ-M2M-Token'
  ),
  environment: Environment::PRODUCTION
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| Production | **Default** |
| Staging | - |

## Authorization

This API uses the following authentication schemes.

* [`thingspace_oauth (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/auth/oauth-2-client-credentials-grant.md)
* [`vz-m2m-session_token (Custom Header Signature)`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/auth/custom-header-signature.md)

## List of APIs

* [Thing Space Qualityof Service API Actions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/controllers/thing-space-qualityof-service-api-actions.md)
* [Exclusions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/controllers/exclusions.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.6.0/doc/http-request.md)

