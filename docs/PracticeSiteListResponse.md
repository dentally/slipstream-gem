# SlipstreamClient::PracticeSiteListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;PracticeSiteDetails&gt;**](PracticeSiteDetails.md) | The site details | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PracticeSiteListResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

