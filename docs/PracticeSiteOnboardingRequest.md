# OpenapiClient::PracticeSiteOnboardingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The human-readable name for the practice. |  |
| **address** | [**StreetAddress**](StreetAddress.md) |  |  |
| **postal_address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **phone_number** | **String** | Contact phone number for in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |
| **email_address** | **String** |  | [optional] |
| **owning_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **billing_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PracticeSiteOnboardingRequest.new(
  name: DentalCare Clinic,
  address: null,
  postal_address: null,
  phone_number: +1 555-555-5555,
  email_address: john.smith@example.com,
  owning_organisation_slug: s8n6EzC,
  billing_organisation_slug: s8n6EzC,
  currency: USD
)
```

