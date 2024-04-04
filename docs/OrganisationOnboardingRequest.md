# SlipstreamClient::OrganisationOnboardingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The human-readable name for the organisation. |  |
| **website** | **String** | The website for the organisation. | [optional] |
| **primary_email_address** | **String** | Primary email address for the organisation, used for general communications. | [optional] |
| **billing_email_address** | **String** | Primary email address for billing-specific mail for the organisation. | [optional] |
| **phone_number** | **String** | Contact phone number for the organisation in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::OrganisationOnboardingRequest.new(
  name: Dental Mega Corp,
  website: https://dental-mega-corp.com/ouch-my-teeth,
  primary_email_address: admin@dental-mega-corp.com,
  billing_email_address: billing@dental-mega-corp.com,
  phone_number: +1 555-555-5555
)
```

