# SlipstreamClient::SmsChangeSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The date the change occured | [optional] |
| **description** | **String** | Formatted description of the change | [optional] |
| **status** | [**SmsSendOutcome**](SmsSendOutcome.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SmsChangeSummary.new(
  timestamp: 2024-10-24T14:30:15+02:00,
  description: The sms was sent to the recipient,
  status: null
)
```

