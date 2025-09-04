# SlipstreamClient::PaymentCreated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment** | [**PaymentDetails**](PaymentDetails.md) |  | [optional] |
| **checkout_url** | **String** | The URL to send the customer to complete the payment | [optional] |
| **client_secret** | **String** | The client secret for the payment session | [optional] |
| **client_api_key** | **String** | The client api key to use with stripe front end libraries | [optional] |
| **account_id** | **String** | The Stripe Account Id to use with stripe front end libraries | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentCreated.new(
  payment: null,
  checkout_url: https://checkout.stripe.com/pay/cs_test_1234,
  client_secret: null,
  client_api_key: null,
  account_id: null
)
```

