# SlipstreamClient::FormGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for the user (See [Sqids](https://sqids.org)) | [optional] |
| **link** | **String** | The link for the forms for the user | [optional] |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **expires_at** | **Time** | The date and time when the form group expires | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroup.new(
  slug: _8n6EzC,
  link: https://l.hsone.app/l67efrtN,
  display_name: New patient onboarding,
  expires_at: 2024-12-31T23:59:59Z
)
```

