# SlipstreamClient::FormGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **expires_at** | **Time** | The date and time when the form group expires, if omitted this defaults to 30 days from creation | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupRequest.new(
  display_name: New patient onboarding,
  expires_at: null
)
```

