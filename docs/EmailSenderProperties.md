# SlipstreamClient::EmailSenderProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_name** | **String** | The sender name to use when sending an email from the selected domain. If not provided, donotreply will be used. | [optional] |
| **sender_display_name** | **String** | The prettified version of the sender name to use when sending an email from the selected domain. If not provided, \&quot;Do Not Reply\&quot; will be used. | [optional] |
| **sender_domain** | [**EmailDomain**](EmailDomain.md) |  |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::EmailSenderProperties.new(
  sender_name: MyDentalClinic,
  sender_display_name: My Dental Clinic,
  sender_domain: null
)
```

