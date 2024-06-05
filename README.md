
# Getting Started with Verizon

## Introduction

The Verizon Edge Discovery Service API can direct your application clients to connect to the optimal service endpoints for your Multi-access Edge Computing (MEC) applications for every session. The Edge Discovery Service takes into account the current location of a device, its IP anchor location, current network traffic and other factors to determine which 5G Edge platform a device should connect to.

Verizon Terms of Service: [https://www.verizon.com/business/5g-edge-portal/legal.html](https://www.verizon.com/business/5g-edge-portal/legal.html)

## Install the Package

Install the gem from the command line:

```ruby
gem install sdksio-verizon-apis-sdk -v 1.5.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'sdksio-verizon-apis-sdk', '1.5.0'
```

For additional gem details, see the [RubyGems page for the sdksio-verizon-apis-sdk gem](https://rubygems.org/gems/sdksio-verizon-apis-sdk/versions/1.5.0).

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
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
| `thingspace_oauth_credentials` | [`ThingspaceOauthCredentials`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/$a/https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| `vz_m2m_token_credentials` | [`VZM2mTokenCredentials`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/$a/https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/custom-header-signature.md) | The credential object for Custom Header Signature |

The API client can be initialized as follows:

```ruby
client = Verizon::Client.new(
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeThingspaceOauthEnum::DISCOVERYREAD,
      OauthScopeThingspaceOauthEnum::SERVICEPROFILEREAD
    ]
  ),
  vz_m2m_token_credentials: VZM2mTokenCredentials.new(),
  environment: Environment::PRODUCTION
)
```

API calls return an `ApiResponse` object that includes the following fields:

| Field | Description |
|  --- | --- |
| `status_code` | Status code of the HTTP response |
| `reason_phrase` | Reason phrase of the HTTP response |
| `headers` | Headers of the HTTP response as a Hash |
| `raw_body` | The body of the HTTP response as a String |
| `request` | HTTP request info |
| `errors` | Errors, if they exist |
| `data` | The deserialized body of the HTTP response |

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| Production | **Default** |
| Mock server for limited availability, see quick start | - |

## Authorization

This API uses the following authentication schemes.

* [`thingspace_oauth (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/$a/https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/oauth-2-client-credentials-grant.md)
* [`VZ-M2M-Token (Custom Header Signature)`](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/$a/https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/custom-header-signature.md)

## List of APIs

* [5G Edge Platforms](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/5g-edge-platforms.md)
* [Service Endpoints](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/service-endpoints.md)
* [Service Profiles](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/service-profiles.md)
* [Device Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-management.md)
* [Device Groups](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-groups.md)
* [Session Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/session-management.md)
* [Connectivity Callbacks](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/connectivity-callbacks.md)
* [Account Requests](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/account-requests.md)
* [Service Plans](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/service-plans.md)
* [Device Diagnostics](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-diagnostics.md)
* [Device Profile Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-profile-management.md)
* [Device Monitoring](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-monitoring.md)
* [E UICC Device Profile Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/e-uicc-device-profile-management.md)
* [Devices Locations](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/devices-locations.md)
* [Devices Location Subscriptions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/devices-location-subscriptions.md)
* [Device Location Callbacks](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-location-callbacks.md)
* [Usage Trigger Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/usage-trigger-management.md)
* [Software Management Subscriptions V1](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-subscriptions-v1.md)
* [Software Management Licenses V1](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-licenses-v1.md)
* [Firmware V1](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/firmware-v1.md)
* [Software Management Callbacks V1](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-callbacks-v1.md)
* [Software Management Reports V1](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-reports-v1.md)
* [Software Management Subscriptions V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-subscriptions-v2.md)
* [Software Management Licenses V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-licenses-v2.md)
* [Campaigns V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/campaigns-v2.md)
* [Software Management Callbacks V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-callbacks-v2.md)
* [Software Management Reports V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-reports-v2.md)
* [Client Logging](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/client-logging.md)
* [Server Logging](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/server-logging.md)
* [Configuration Files](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/configuration-files.md)
* [Software Management Subscriptions V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-subscriptions-v3.md)
* [Software Management Licenses V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-licenses-v3.md)
* [Campaigns V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/campaigns-v3.md)
* [Software Management Reports V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-reports-v3.md)
* [Firmware V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/firmware-v3.md)
* [Account Devices](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/account-devices.md)
* [Software Management Callbacks V3](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/software-management-callbacks-v3.md)
* [SIM Securefor Io T Licenses](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/sim-securefor-io-t-licenses.md)
* [Account Subscriptions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/account-subscriptions.md)
* [Performance Metrics](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/performance-metrics.md)
* [Diagnostics Subscriptions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-subscriptions.md)
* [Diagnostics Observations](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-observations.md)
* [Diagnostics History](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-history.md)
* [Diagnostics Settings](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-settings.md)
* [Diagnostics Callbacks](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-callbacks.md)
* [Diagnostics Factory Reset](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/diagnostics-factory-reset.md)
* [Cloud Connector Subscriptions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/cloud-connector-subscriptions.md)
* [Cloud Connector Devices](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/cloud-connector-devices.md)
* [Device Service Management](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-service-management.md)
* [Device Reports](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-reports.md)
* [Hyper Precise Location Callbacks](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/hyper-precise-location-callbacks.md)
* [Anomaly Settings](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/anomaly-settings.md)
* [Anomaly Triggers](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/anomaly-triggers.md)
* [Anomaly Triggers V2](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/anomaly-triggers-v2.md)
* [Wireless Network Performance](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/wireless-network-performance.md)
* [Fixed Wireless Qualification](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/fixed-wireless-qualification.md)
* [Managinge SIM Profiles](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/managinge-sim-profiles.md)
* [Device SMS Messaging](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-sms-messaging.md)
* [Device Actions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/device-actions.md)
* [Thing Space Qualityof Service API Actions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/thing-space-qualityof-service-api-actions.md)
* [Promotion Period Information](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/promotion-period-information.md)
* [Retrievethe Triggers](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/retrievethe-triggers.md)
* [Update Triggers](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/update-triggers.md)
* [SIM Actions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/sim-actions.md)
* [Global Reporting](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/global-reporting.md)
* [OAuth Authorization](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/oauth-authorization.md)
* [Accounts](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/accounts.md)
* [SMS](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/sms.md)
* [Exclusions](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/exclusions.md)
* [Billing](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/billing.md)
* [Targets](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/targets.md)
* [MEC](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/mec.md)
* [V2 Triggers](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/controllers/v2-triggers.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/verizon-apis-ruby-sdk/tree/1.5.0/doc/http-request.md)

