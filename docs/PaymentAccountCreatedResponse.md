# SlipstreamClient::PaymentAccountCreatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**PaymentAccountDetails**](PaymentAccountDetails.md) |  | [optional] |
| **onboarding_session** | [**PaymentAccountCreatedResponseOnboardingSession**](PaymentAccountCreatedResponseOnboardingSession.md) |  | [optional] |
| **onboarding_link** | [**PaymentAccountCreatedResponseOnboardingLink**](PaymentAccountCreatedResponseOnboardingLink.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountCreatedResponse.new(
  account: null,
  onboarding_session: null,
  onboarding_link: null
)
```

