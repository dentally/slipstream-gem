# OpenapiClient::PracticeEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **pms_specific_id** | **String** | What you call this entity within your PMS | [optional] |
| **entity_type** | [**PracticeEntityType**](PracticeEntityType.md) |  | [optional] |
| **practice_management_software** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PracticeEntity.new(
  slug: s8n6EzC,
  pms_specific_id: UKLUM123,
  entity_type: null,
  practice_management_software: null
)
```

