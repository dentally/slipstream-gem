# SlipstreamClient::CreatePaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  |  |
| **currency** | **String** | The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice. |  |
| **customer_id** | **String** | A unique identifier for the customer | [optional] |
| **reference** | **String** | The PMS reference for the payment | [optional] |
| **statement_descriptor** | **String** | A description for the payment that will appear on the customer&#39;s statement | [optional] |
| **fee_amount** | **Integer** | The fee amount (if any) that will be applied to the payment. The amount collected will be capped at the total payment amount. | [optional] |
| **line_items** | [**Array&lt;PaymentLineItem&gt;**](PaymentLineItem.md) | The history of state changes the payment has gone through | [optional] |
| **ui_mode** | [**PaymentUiMode**](PaymentUiMode.md) |  | [optional] |
| **success_url** | **String** | The URL to redirect the customer to after a successful payment (in hosted UI mode) | [optional] |
| **cancel_url** | **String** | If set, Stripe checkout displays a back button where customers will be sent if they cancel the payment | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CreatePaymentRequest.new(
  payment_provider: null,
  currency: USD,
  customer_id: null,
  reference: INV-1234,
  statement_descriptor: null,
  fee_amount: 100,
  line_items: null,
  ui_mode: null,
  success_url: https://example-hsone-vap.com/payment/success,
  cancel_url: https://example-hsone-vap.com/payment/cancelled
)
```

