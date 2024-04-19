# SlipstreamClient::BillingItemDetailsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;BillingItemDetails&gt;**](BillingItemDetails.md) | The billing item details | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BillingItemDetailsListResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

