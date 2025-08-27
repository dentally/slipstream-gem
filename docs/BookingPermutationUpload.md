# SlipstreamClient::BookingPermutationUpload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **booking_scenario** | [**BookingScenario**](BookingScenario.md) |  |  |
| **practitioner_identifier** | **String** | The Pms Specific identifier of the practitioner.  |  |
| **reason_identifier** | **String** | The Pms Specific identifier of the booking reason.  |  |
| **payor** | **String** | The payor for the appointment (e.g. &#39;Private&#39;, &#39;NHS&#39;, &#39;Insurance&#39;) | [optional] |
| **duration** | **String** | Duration in ISO 8601 duration format (e.g. PT30M for 30 minutes) |  |
| **maximum_booking_lead_time** | **String** | Duration in ISO 8601 duration format (e.g. PT30M for 30 minutes) | [optional] |
| **price** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. | [optional] |
| **deposit** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BookingPermutationUpload.new(
  booking_scenario: null,
  practitioner_identifier: DR-123,
  reason_identifier: 0-14-418,
  payor: Private,
  duration: PT30M,
  maximum_booking_lead_time: PT30M,
  price: 1000,
  deposit: 1000
)
```

