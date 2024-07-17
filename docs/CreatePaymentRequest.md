# SlipstreamClient::CreatePaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. |  |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. |  |
| **customer_id** | **String** | A unique identifier for the customer | [optional] |
| **description** | **String** | A description of the payment for the customer | [optional] |
| **fee_amount** | **Integer** | The fee amount (if any) that will be applied to the payment. The amount collected will be capped at the total payment amount. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CreatePaymentRequest.new(
  amount: 1000,
  currency: USD,
  customer_id: null,
  description: null,
  fee_amount: 100
)
```

