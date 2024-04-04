# OpenapiClient::PracticeSiteDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**PracticeSiteIdentity**](PracticeSiteIdentity.md) |  |  |
| **deleted_organisation** | [**OrganisationIdentity**](OrganisationIdentity.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PracticeSiteDeleted.new(
  identity: null,
  deleted_organisation: null
)
```

