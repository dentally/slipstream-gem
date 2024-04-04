# SlipstreamClient::UpdatePracticeSiteDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pms_specific_site_id** | **String** | The PMS-specific id that uniquely identifies a physical practice | [optional] |
| **name** | **String** | The human-readable name for the practice. | [optional] |
| **address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **postal_address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **phone_number** | **String** | Contact phone number for in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |
| **email_address** | **String** |  | [optional] |
| **application_version** | **String** | The version of the software that the practice is running | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UpdatePracticeSiteDetailsRequest.new(
  pms_specific_site_id: 04d2f2f0-8f1a-11eb-8dcd-0242ac130003,
  name: DentalCare Clinic,
  address: null,
  postal_address: null,
  phone_number: +1 555-555-5555,
  email_address: john.smith@example.com,
  application_version: 1.2.3,
  currency: USD
)
```

