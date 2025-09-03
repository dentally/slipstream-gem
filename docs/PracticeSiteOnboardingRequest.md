# SlipstreamClient::PracticeSiteOnboardingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The human-readable name for the practice. |  |
| **address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **postal_address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **phone_number** | **String** | Contact phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |
| **email_address** | **String** | An email address | [optional] |
| **owning_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **billing_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |
| **time_zone** | **String** | The time zone of the practice, in [IANA Time Zone Database](https://www.iana.org/time-zones) format. | [optional] |
| **website_url** | **String** | The URL for the practice&#39;s website, if available. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PracticeSiteOnboardingRequest.new(
  name: DentalCare Clinic,
  address: null,
  postal_address: null,
  phone_number: +1 555-555-5555,
  email_address: john.smith@example.com,
  owning_organisation_slug: s8n6EzC,
  billing_organisation_slug: s8n6EzC,
  currency: USD,
  time_zone: Europe/London,
  website_url: https://www.dentalcareclinic.com
)
```

