# SlipstreamClient::PhysicalPostEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_id** | **String** | The record that this event is related to | [optional] |
| **color** | **Boolean** | Whether the letter was requested to be printed in color. | [optional] |
| **express** | **Boolean** | Whether the letter was requested to be sent as express mail. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PhysicalPostEvent.new(
  record_id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  color: false,
  express: false
)
```

