# SlipstreamClient::ShortenedLinksListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ShortenedLink&gt;**](ShortenedLink.md) | The short links | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ShortenedLinksListResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

