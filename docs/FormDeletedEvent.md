# SlipstreamClient::FormDeletedEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The slug that uniquely identifies the form | [optional] |
| **group_id** | **String** | The slug that uniquely identifies the form group | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormDeletedEvent.new(
  id: _lBfxX1Y3qtEL,
  group_id: _p8BaECPNwEb0
)
```

