# SlipstreamClient::SendSmsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pms_specific_id** | **String** | The unique ID of the SMS in the PMS system |  |
| **to** | **String** | The phone number to send the SMS to in E164 format |  |
| **from** | **String** | The phone phone number to send the SMS from in E164 format - if not provided, and there is not an SMS phone number associated with the practice, then the default phone number for the region will be used | [optional] |
| **message_body** | **String** | The body of the SMS message to send - must be less than 160 characters to be sent in a single message |  |
| **media_url** | **String** | The URL of the media to send with the SMS - must be a valid URL and the media must be less than 1MB in size | [optional] |
| **requires_recipient_response** | **Boolean** | Whether a response is required from the recipient - if true, the SMS will be sent as a two-way SMS and the recipient will be able to reply | [optional][default to false] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SendSmsRequest.new(
  pms_specific_id: {064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e},
  to: +31612345678,
  from: +31687654321,
  message_body: Hello, this is a test message,
  media_url: https://example.com/image.jpg,
  requires_recipient_response: null
)
```

