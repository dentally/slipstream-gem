# OpenapiClient::PracticeSiteIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the practice site | [optional] |
| **practice_management_software** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  |  |
| **pms_specific_site_id** | **String** | The PMS-specific id that uniquely identifies a physical practice |  |
| **site_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) |  |
| **owning_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) |  |
| **billing_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PracticeSiteIdentity.new(
  name: The Friendly Dentist,
  practice_management_software: null,
  pms_specific_site_id: 04d2f2f0-8f1a-11eb-8dcd-0242ac130003,
  site_slug: s8n6EzC,
  owning_organisation_slug: s8n6EzC,
  billing_organisation_slug: s8n6EzC
)
```

