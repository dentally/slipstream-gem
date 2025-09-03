# SlipstreamClient::TimeSlot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **String** | Start time in 24-hour format (HH:MM) |  |
| **end_time** | **String** | End time in 24-hour format (HH:MM) |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::TimeSlot.new(
  start_time: 09:00,
  end_time: 09:30
)
```

