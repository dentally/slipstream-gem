# SlipstreamClient::PracticeSiteDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**PracticeSiteIdentity**](PracticeSiteIdentity.md) |  |  |
| **deleted_organisation** | [**OrganisationIdentity**](OrganisationIdentity.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PracticeSiteDeleted.new(
  identity: null,
  deleted_organisation: null
)
```

