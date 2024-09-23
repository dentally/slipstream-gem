# SlipstreamClient::FormGroupEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The slug that uniquely identifies the form group | [optional] |
| **display_name** | **String** | The display name of the form group | [optional] |
| **expires_at** | **Time** | The expiry date of the form group in ISO8601 format | [optional] |
| **user_id** | **String** | The slug that uniquely identifies the user | [optional] |
| **user_display_name** | **String** | The user&#39;s full name | [optional] |
| **user_first_name** | **String** | The user&#39;s first name | [optional] |
| **user_last_name** | **String** | The user&#39;s last name | [optional] |
| **user_email_address** | **String** | The user&#39;s email address | [optional] |
| **user_phone** | **String** | The user&#39;s phone number | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupEvent.new(
  id: _p8BaECPNwEb0,
  display_name: New patient onboarding,
  expires_at: 2024-10-24T14:30:15Z,
  user_id: _7CaEBEDab2,
  user_display_name: John Smith,
  user_first_name: John,
  user_last_name: Smith,
  user_email_address: john.smith@example.com,
  user_phone: +640212345678
)
```

