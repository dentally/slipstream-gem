# SlipstreamClient::SendEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pms_specific_id** | **String** | The unique ID of the email in the pms system |  |
| **to** | [**Array&lt;EmailAddressWithDisplayName&gt;**](EmailAddressWithDisplayName.md) | The recipient email address(es) |  |
| **cc** | [**Array&lt;EmailAddressWithDisplayName&gt;**](EmailAddressWithDisplayName.md) | The cc&#39;d recipient(s) email address | [optional] |
| **bcc** | [**Array&lt;EmailAddressWithDisplayName&gt;**](EmailAddressWithDisplayName.md) | The bcc&#39;d recipient(s) email address | [optional] |
| **subject** | **String** | The subject of the email |  |
| **body** | **String** | The plain text body of the email, must be set if the BodyHtml property is not set. | [optional] |
| **body_html** | **String** | The html body of the email, must be set if the Body property is not set. | [optional] |
| **sender_properties** | [**EmailSenderProperties**](EmailSenderProperties.md) |  |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SendEmailRequest.new(
  pms_specific_id: {064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e},
  to: null,
  cc: null,
  bcc: null,
  subject: This is a test email,
  body: Here is the body of the email,
  body_html: &lt;p&gt;Here is the body of the email&lt;/p&gt;,
  sender_properties: null
)
```

