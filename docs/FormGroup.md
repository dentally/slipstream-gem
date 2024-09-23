# SlipstreamClient::FormGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for the user (See [Sqids](https://sqids.org)) | [optional] |
| **link** | **String** | The link for the forms for the user | [optional] |
| **expires_at** | **Time** | The expiry date of the form group in ISO8601 format | [optional] |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroup.new(
  slug: _8n6EzC,
  link: https://l.hsone.app/l67efrtN,
  expires_at: null,
  display_name: New patient onboarding
)
```

