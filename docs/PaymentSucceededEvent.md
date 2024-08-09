# SlipstreamClient::PaymentSucceededEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |
| **amount** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. | [optional] |
| **reference** | **String** | The PMS reference for the payment | [optional] |
| **record_id** | **String** | The record that this event is related to. | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentSucceededEvent.new(
  currency: USD,
  amount: 1000,
  reference: INV-1234,
  record_id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  payment_provider: null
)
```

