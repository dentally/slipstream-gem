# SlipstreamClient::LetterDetailsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;LetterDetails&gt;**](LetterDetails.md) | The letter details | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::LetterDetailsListResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

