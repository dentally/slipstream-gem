# OpenapiClient::LetterChangeSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The date the change occured | [optional] |
| **description** | **String** | Formatted description of the change | [optional] |
| **status** | [**LetterStatus**](LetterStatus.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LetterChangeSummary.new(
  timestamp: 2024-10-24T14:30:15+02:00,
  description: The letter was sent to the postal provider,
  status: null
)
```

