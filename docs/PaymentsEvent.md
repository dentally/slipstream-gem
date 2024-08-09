# SlipstreamClient::PaymentsEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_id** | **String** | The record that this event is related to. | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentsEvent.new(
  record_id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  payment_provider: null
)
```

