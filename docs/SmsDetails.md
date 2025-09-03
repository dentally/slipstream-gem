# SlipstreamClient::SmsDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_id** | **String** | The unique identifier of the sms in the provider&#39;s system |  |
| **record_id** | **String** | The unique Slipstream identifier of the sms | [optional] |
| **pms_specific_id** | **String** | The unique identifier of the sms in the PMS | [optional] |
| **to** | **String** | The phone number to send the sms to | [optional] |
| **from** | **String** | The phone number or short code to send the sms from | [optional] |
| **body** | **String** | The body of the sms | [optional] |
| **created** | **Time** | The date of the original send sms request | [optional] |
| **sent** | **Time** | The date the letter was sent by the provider | [optional] |
| **state** | [**SmsSendOutcome**](SmsSendOutcome.md) |  | [optional] |
| **state_details** | **String** | The details of the state of the sms | [optional] |
| **failure_reason** | **String** | The reason for the sms failure | [optional] |
| **response_text** | **String** | The response text received from the recipient. Contextually specific to the initial SMS message&#39;s question | [optional] |
| **history** | [**Array&lt;SmsChangeSummary&gt;**](SmsChangeSummary.md) | The history of state changes the sms has gone through | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SmsDetails.new(
  sms_id: null,
  record_id: null,
  pms_specific_id: null,
  to: null,
  from: null,
  body: null,
  created: 2024-10-24T14:30:15+02:00,
  sent: 2024-10-24T14:30:15+02:00,
  state: null,
  state_details: The sms was sent to the recipient,
  failure_reason: The recipient&#39;s phone number is invalid,
  response_text: null,
  history: null
)
```

