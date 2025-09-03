# SlipstreamClient::PaymentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier for the payment | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |
| **payment_intent_id** | **String** | The payment id issued by the payment provider | [optional] |
| **reference** | **String** | The PMS reference for the payment | [optional] |
| **amount** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. | [optional] |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. | [optional] |
| **payment_status** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] |
| **session_status** | [**PaymentSessionStatus**](PaymentSessionStatus.md) |  | [optional] |
| **intent_status** | [**PaymentIntentStatus**](PaymentIntentStatus.md) |  | [optional] |
| **customer_id** | **String** | A unique identifier for the customer | [optional] |
| **statement_descriptor** | **String** | A description of the payment to appear on the customer&#39;s statement | [optional] |
| **fee_amount** | **Integer** | The fee amount for the payment | [optional] |
| **history** | [**Array&lt;PaymentChangeSummary&gt;**](PaymentChangeSummary.md) | The history of state changes the payment has gone through | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentDetails.new(
  id: 123e4567-e89b-12d3-a456-426614174000,
  payment_provider: null,
  payment_intent_id: pi_1234567890,
  reference: INV-1234,
  amount: 1000,
  currency: USD,
  payment_status: null,
  session_status: null,
  intent_status: null,
  customer_id: null,
  statement_descriptor: null,
  fee_amount: 100,
  history: null
)
```

