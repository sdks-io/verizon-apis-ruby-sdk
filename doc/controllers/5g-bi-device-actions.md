# 5G BI Device Actions

```ruby
m_5g_bi_device_actions_controller = client.m_5g_bi_device_actions
```

## Class Name

`M5gBIDeviceActionsController`

## Methods

* [Business Internetlist Device Information](../../doc/controllers/5g-bi-device-actions.md#business-internetlist-device-information)
* [Business Internetactivate Using POST](../../doc/controllers/5g-bi-device-actions.md#business-internetactivate-using-post)
* [Business Internet Serviceplanchange](../../doc/controllers/5g-bi-device-actions.md#business-internet-serviceplanchange)


# Business Internetlist Device Information

Uses the decive's Integrated Circuit Card Identification Number (ICCID) to retrive and display the device's properties.

```ruby
def business_internetlist_device_information(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`M5gBideviceId`](../../doc/models/5g-bidevice-id.md) | Body, Required | Device Profile Query |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`M5gBideviceDetailsresponse`](../../doc/models/5g-bidevice-detailsresponse.md).

## Example Usage

```ruby
body = M5gBideviceId.new(
  M5gBideviceId1.new(
    '20-digit ICCID',
    'iccid'
  )
)

result = m_5g_bi_device_actions_controller.business_internetlist_device_information(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`M5gBiRestErrorResponseException`](../../doc/models/5g-bi-rest-error-response-exception.md) |


# Business Internetactivate Using POST

Uses the device's ICCID and IMEI to activate service.

```ruby
def business_internetactivate_using_post(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`M5gBiactivateRequest`](../../doc/models/5g-biactivate-request.md) | Body, Required | Activate 5G BI service. Defining <code>publicIpRestriction</code> as "Unrestricted" or "Restricted" is required for activating as Public Static. Leave  <code>publicIpRestriction</code> undefined to activate as Public Dynamic. Removing <code>publicIpRestriction</code> from the request will activate as Mobile Private Network (MPN). |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`M5gBiRequestResponse`](../../doc/models/5g-bi-request-response.md).

## Example Usage

```ruby
body = M5gBiactivateRequest.new(
  '0000123456-00001',
  'service plan name',
  [
    DeviceListWithServiceAddress1.new(
      [
        M5gBideviceId1.new(
          '15-digit IMEI',
          'imei'
        ),
        M5gBideviceId1.new(
          '20-digit ICCID',
          'iccid'
        )
      ]
    ),
    DeviceListWithServiceAddress1.new(
      nil,
      M5gBiprimaryPlaceofuse.new(
        M5gBiAddress.new(
          'street number and name',
          'city of address',
          '2-letter state ID (conforms to ISO 3166-2)',
          '5-digit ZIP code',
          'the +4 digits used for ZIP codes',
          'a 10-digit phone number',
          'W'
        ),
        M5gBiCustomerName.new(
          'First name',
          'Surname or Last Name',
          'middle name or initial',
          'Mr. or Ms.',
          'Dr or Esq'
        )
      )
    )
  ],
  'Unrestricted',
  'Verizon Wireless',
  'the 5-digit ZIP code of the Mobile Directory Number (MDN)'
)

result = m_5g_bi_device_actions_controller.business_internetactivate_using_post(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "d1f08526-5443-4054-9a29-4456490ea9f8"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`M5gBiRestErrorResponseException`](../../doc/models/5g-bi-rest-error-response-exception.md) |


# Business Internet Serviceplanchange

Change a device's service plan to use 5G BI.

```ruby
def business_internet_serviceplanchange(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`M5gBichangeRequest`](../../doc/models/5g-bichange-request.md) | Body, Required | This endpoint is for use when changing a device's service plan to a 5G BI service plan. The service plan can change for an active device up to four times per month but will require address validation for each change. The service plan cannot be changed for a device while its service is suspended. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`M5gBiRequestResponse`](../../doc/models/5g-bi-request-response.md).

## Example Usage

```ruby
body = M5gBichangeRequest.new(
  '0000123456-00001',
  '5G BI service plan name being changed to',
  [
    DeviceListWithServiceAddress.new(
      [
        M5gBideviceId1.new(
          '15-digit IMEI',
          'imei'
        )
      ]
    ),
    DeviceListWithServiceAddress.new(
      nil,
      M5gBiaddressAndcustomerinfo.new
    )
  ],
  'Name of the plan being changed from'
)

result = m_5g_bi_device_actions_controller.business_internet_serviceplanchange(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "d1f08526-5443-4054-9a29-4456490ea9f8"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`M5gBiRestErrorResponseException`](../../doc/models/5g-bi-rest-error-response-exception.md) |

