# SlipstreamClient::AvailabilityUpload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **practitioner_identifier** | **String** | External ID or Exact ID of the practitioner |  |
| **reason_identifier** | **String** | External ID or Exact ID of the booking reason |  |
| **booking_scenario** | [**BookingScenario**](BookingScenario.md) |  |  |
| **availability_dates** | [**Array&lt;AvailabilityForDate&gt;**](AvailabilityForDate.md) | Availability slots grouped by date |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::AvailabilityUpload.new(
  practitioner_identifier: DR-123,
  reason_identifier: 0-14-418,
  booking_scenario: null,
  availability_dates: null
)
```

