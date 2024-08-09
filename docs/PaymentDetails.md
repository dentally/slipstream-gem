# SlipstreamClient::PaymentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |
| **record_id** | **String** | The slipstream identifier for the payment | [optional] |
| **payment_id** | **String** | The payment provider&#39;s identifier for the payment | [optional] |
| **reference** | **String** | The PMS reference for the payment | [optional] |
| **amount** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |
| **customer_id** | **String** | A unique identifier for the customer | [optional] |
| **statement_descriptor** | **String** | A description of the payment to appear on the customer&#39;s statement | [optional] |
| **fee_amount** | **Integer** | The fee amount for the payment | [optional] |
| **tip_amount** | **Integer** | The portion of the amount that corresponds to a tip | [optional] |
| **history** | [**Array&lt;PaymentChangeSummary&gt;**](PaymentChangeSummary.md) | The history of state changes the payment has gone through | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentDetails.new(
  payment_provider: null,
  record_id: 123e4567-e89b-12d3-a456-426614174000,
  payment_id: pi_3MtwBwLkdIwHu7ix28a3tqPa,
  reference: INV-1234,
  amount: 1000,
  currency: USD,
  customer_id: null,
  statement_descriptor: null,
  fee_amount: 100,
  tip_amount: 100,
  history: null
)
```

