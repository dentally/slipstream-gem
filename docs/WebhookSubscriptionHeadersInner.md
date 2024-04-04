# SlipstreamClient::WebhookSubscriptionHeadersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the header |  |
| **value** | **String** | The value of the header |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::WebhookSubscriptionHeadersInner.new(
  name: X-API-KEY,
  value: 1234567890abcdef1234567890abcdef
)
```

