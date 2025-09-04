# SlipstreamClient::EmailAddressWithDisplayName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | An email address |  |
| **display_name** | **String** | The display name for the email | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::EmailAddressWithDisplayName.new(
  address: john.smith@example.com,
  display_name: John Smith
)
```

