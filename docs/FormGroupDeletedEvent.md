# SlipstreamClient::FormGroupDeletedEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The slug that uniquely identifies the form group | [optional] |
| **user_id** | **String** | The slug that uniquely identifies the user | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupDeletedEvent.new(
  id: _p8BaECPNwEb0,
  user_id: _7CaEBEDab2
)
```

