# SlipstreamClient::PaymentAccountCreatedOnboardingLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | **String** | A redirection link for hosted onboarding | [optional] |
| **expires_at** | **Time** | When the link expires in ISO8601 format | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountCreatedOnboardingLink.new(
  link: https://connect.stripe.com/setup/c/acct_1Mt0CORHFI4mz9Rw/TqckGNUHg2mG,
  expires_at: 2024-10-24T14:30:15+02:00
)
```

