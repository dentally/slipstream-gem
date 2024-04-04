# OpenapiClient::Addressee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pms_specific_id** | **String** | The ID that the PMS uses to identify the person |  |
| **given_name** | **String** | The first name of the person | [optional] |
| **middle_name** | **String** | The middle name(s) of the person | [optional] |
| **family_name** | **String** | The last name of the person | [optional] |
| **full_name** | **String** | The display name for the person |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Addressee.new(
  pms_specific_id: 1234567890abcdef1234567890abcdef,
  given_name: John,
  middle_name: Danger Blanket,
  family_name: Smith,
  full_name: Dr John Smith III
)
```

