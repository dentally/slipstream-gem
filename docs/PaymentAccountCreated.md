# SlipstreamClient::PaymentAccountCreated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**PaymentAccountDetails**](PaymentAccountDetails.md) |  | [optional] |
| **onboarding_session** | [**PaymentAccountCreatedOnboardingSession**](PaymentAccountCreatedOnboardingSession.md) |  | [optional] |
| **onboarding_link** | [**PaymentAccountCreatedOnboardingLink**](PaymentAccountCreatedOnboardingLink.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountCreated.new(
  account: null,
  onboarding_session: null,
  onboarding_link: null
)
```

