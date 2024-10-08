# SlipstreamClient::FormUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The display name |  |
| **last_name** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId |  |
| **email** | **String** | The email address of the user | [optional] |
| **phone** | **String** | The phone number of the user | [optional] |
| **date_of_birth** | **Date** | The date of birth of the user | [optional] |
| **external_id** | **String** | The unique identifier of the user assigned by the client/PMS | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormUserRequest.new(
  display_name: John,
  last_name: Smith,
  email: John.Smith@henryscheinone.com,
  phone: +64 555-555-5555,
  date_of_birth: Mon Jan 01 00:00:00 GMT 1990,
  external_id: 123e4567-e89b-12d3-a456-426614174000
)
```

