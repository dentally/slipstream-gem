# SlipstreamClient::PaymentAccountCreatedOnboardingSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session** | **String** | A session token for embeded onboarding | [optional] |
| **expires_at** | **Time** | When the link expires in ISO8601 format | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountCreatedOnboardingSession.new(
  session: _OXIKXxEihJokDBnDoe2sgG5OGSO2Q12shKvbeboxpALZGng,
  expires_at: 2024-10-24T14:30:15+02:00
)
```

