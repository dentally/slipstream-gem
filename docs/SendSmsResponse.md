# SlipstreamClient::SendSmsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **succeeded** | [**Array&lt;SmsRecordIdentity&gt;**](SmsRecordIdentity.md) | SMS successfully sent | [optional] |
| **failed** | [**Array&lt;SmsRecordIdentity&gt;**](SmsRecordIdentity.md) | SMS sent failed | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SendSmsResponse.new(
  succeeded: null,
  failed: null
)
```

