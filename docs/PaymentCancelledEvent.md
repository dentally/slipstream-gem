# SlipstreamClient::PaymentCancelledEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_reason** | **String** | The reason the payment cancelled. | [optional] |
| **reference** | **String** | The PMS reference for the payment | [optional] |
| **record_id** | **String** | The record that this event is related to. | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentCancelledEvent.new(
  cancellation_reason: User requested,
  reference: INV-1234,
  record_id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  payment_provider: null
)
```

