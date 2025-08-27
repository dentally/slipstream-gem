# SlipstreamClient::FormUpdatedEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_state** | **Object** | The metadata containing the users responses to the form | [optional] |
| **id** | **String** | The slug that uniquely identifies the form | [optional] |
| **group_id** | **String** | The slug that uniquely identifies the form group | [optional] |
| **group_display_name** | **String** | The display name of the form group | [optional] |
| **display_name** | **String** | The display name of the form | [optional] |
| **type** | **String** | The type of the form | [optional] |
| **type_id** | **String** | The type id of the form | [optional] |
| **user_id** | **String** | The slug that uniquely identifies the user | [optional] |
| **user_display_name** | **String** | The user&#39;s full name | [optional] |
| **user_first_name** | **String** | The user&#39;s first name | [optional] |
| **user_last_name** | **String** | The user&#39;s last name | [optional] |
| **user_email_address** | **String** | The user&#39;s email address | [optional] |
| **user_phone** | **String** | The user&#39;s phone number | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormUpdatedEvent.new(
  current_state: {&quot;title&quot;:&quot;Mr&quot;,&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Smith&quot;},
  id: _lBfxX1Y3qtEL,
  group_id: _p8BaECPNwEb0,
  group_display_name: New patient onboarding,
  display_name: Patient details,
  type: PatientDetails,
  type_id: null,
  user_id: _7CaEBEDab2,
  user_display_name: John Smith,
  user_first_name: John,
  user_last_name: Smith,
  user_email_address: john.smith@example.com,
  user_phone: +640212345678
)
```

