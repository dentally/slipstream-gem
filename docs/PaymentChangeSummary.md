# SlipstreamClient::PaymentChangeSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The date the change occured | [optional] |
| **description** | **String** | Formatted description of the change | [optional] |
| **status** | **String** | The status of the payment | [optional] |
| **change_id** | **String** | The unique identifier of the change/event | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentChangeSummary.new(
  timestamp: 2024-10-24T14:30:15+02:00,
  description: Payment completed successfully,
  status: Completed,
  change_id: evt_1234567890
)
```

