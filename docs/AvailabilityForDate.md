# SlipstreamClient::AvailabilityForDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date for these availability slots (ISO 8601 format) |  |
| **time_slots** | [**Array&lt;TimeSlot&gt;**](TimeSlot.md) | Available time slots for this date |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::AvailabilityForDate.new(
  date: Fri Mar 15 13:00:00 NZDT 2024,
  time_slots: null
)
```

