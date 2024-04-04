# SlipstreamClient::ApiKeyPair

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_key** | **String** | The primary key to use in the X-API-KEY header when calling the practice APIs |  |
| **secondary_key** | **String** | The secondary key to use in the X-API-KEY header when calling the practice APIs. Use this when the primary fails. |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ApiKeyPair.new(
  primary_key: 1234567890abcdef1234567890abcdef,
  secondary_key: 1234567890abcdef1234567890abcdef
)
```

