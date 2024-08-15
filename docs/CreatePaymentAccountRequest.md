# SlipstreamClient::CreatePaymentAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |
| **return_url** | **String** | The URL to redirect the user to after the account has been created | [optional] |
| **refresh_url** | **String** | The URL to redirect the user to if the account onboarding session expires | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CreatePaymentAccountRequest.new(
  payment_provider: null,
  return_url: https://example-hsone-vap.com/payment/account/return,
  refresh_url: https://example-hsone-vap.com/payment/account/resume-onboarding
)
```

