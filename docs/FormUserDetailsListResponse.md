# SlipstreamClient::FormUserDetailsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FormUserWithFormGroups&gt;**](FormUserWithFormGroups.md) | The user details | [optional] |
| **next_page_token** | **String** | A token to use when retrieving the next page of results | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormUserDetailsListResponse.new(
  items: null,
  next_page_token: eyJ0eXAiOi
)
```

