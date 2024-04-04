# SlipstreamClient::OrganisationIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the organisation | [optional] |
| **practice_management_software** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  |  |
| **pms_specific_organisation_id** | **String** | The PMS-specific id that unique identifies an organisation, which owns or is responsible for billing for one or more practice sites |  |
| **organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::OrganisationIdentity.new(
  name: All your teeth are belong to us LTD,
  practice_management_software: null,
  pms_specific_organisation_id: 04d2f2f0-8f1a-11eb-8dcd-0242ac130003,
  organisation_slug: s8n6EzC
)
```

