# SlipstreamClient::ClientQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **burst_capacity** | **Integer** | The maximum number of tokens that can be accumulated | [optional] |
| **tokens_per_second** | **Integer** | Number of tokens accumulated per second | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ClientQuota.new(
  burst_capacity: 500,
  tokens_per_second: 50
)
```

