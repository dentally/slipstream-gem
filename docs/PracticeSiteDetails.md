# SlipstreamClient::PracticeSiteDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **practice_management_software** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  |  |
| **pms_specific_site_id** | **String** | The PMS-specific id that uniquely identifies a physical practice |  |
| **site_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) |  |
| **owning_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **billing_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **name** | **String** | The human-readable name for the practice. |  |
| **address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **postal_address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **coordinates** | [**Coordinates**](Coordinates.md) |  | [optional] |
| **phone_number** | **String** | Contact phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |
| **email_address** | **String** | An email address | [optional] |
| **application_version** | **String** | The version of the software that the practice is running | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |
| **google_place_id** | **String** | The place id of the practice, if known. See [Google Places API](https://developers.google.com/places/web-service/place-id) for more information. | [optional] |
| **site_status** | [**PracticeStatus**](PracticeStatus.md) |  | [optional] |
| **logo_url** | **String** | A URL to the logo for the practice. | [optional] |
| **website_url** | **String** | A URL to the website for the practice. | [optional] |
| **privacy_policy_url** | **String** | A URL to the privacy policy for the practice. | [optional] |
| **time_zone** | **String** | The time zone of the practice, in [IANA Time Zone Database](https://www.iana.org/time-zones) format. | [optional] |
| **google_tags** | [**GoogleTags**](GoogleTags.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PracticeSiteDetails.new(
  practice_management_software: null,
  pms_specific_site_id: 04d2f2f0-8f1a-11eb-8dcd-0242ac130003,
  site_slug: s8n6EzC,
  owning_organisation_slug: s8n6EzC,
  billing_organisation_slug: s8n6EzC,
  name: DentalCare Clinic,
  address: null,
  postal_address: null,
  coordinates: null,
  phone_number: +1 555-555-5555,
  email_address: john.smith@example.com,
  application_version: 1.2.3,
  currency: USD,
  google_place_id: ChIJN1t_tDeuEmsRUsoyG83frY4,
  site_status: null,
  logo_url: https://dental-mega-corp.com/logo.svg,
  website_url: https://dental-mega-corp.com/locations/san-francisco,
  privacy_policy_url: https://dental-mega-corp.com/privacy-policy,
  time_zone: Europe/London,
  google_tags: null
)
```

