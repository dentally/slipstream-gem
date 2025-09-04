# SlipstreamClient::ListOnlineBookingSitesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;OnlineBookingSiteDetails&gt;**](OnlineBookingSiteDetails.md) | Online booking site details | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ListOnlineBookingSitesResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

