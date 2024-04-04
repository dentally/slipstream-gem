# SlipstreamClient::LetterDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **letter_id** | **String** | The unique identifier of the letter in the postal provider&#39;s system |  |
| **record_id** | **String** | The unique Slipstream identifier of the letter | [optional] |
| **pms_specific_id** | **String** | The unique identifier of the letter in the PMS | [optional] |
| **addressee** | [**Addressee**](Addressee.md) |  | [optional] |
| **address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |
| **pdf** | [**DataUri**](DataUri.md) |  | [optional] |
| **created** | **Time** | The date of the original send letter request | [optional] |
| **scheduled_send_date** | **Time** | The date the letter was scheduled to be sent | [optional] |
| **sent** | **Time** | The date the letter was sent to the postal provider | [optional] |
| **color** | **String** | The color of the letter | [optional] |
| **delivery** | **String** | The delivery method of the letter | [optional] |
| **state** | **String** | The state of the letter | [optional] |
| **state_details** | **String** | The details of the state of the letter | [optional] |
| **description** | **String** | Formatted description of the letter | [optional] |
| **history** | [**Array&lt;LetterChangeSummary&gt;**](LetterChangeSummary.md) | The history of state changes the letter has gone through | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::LetterDetails.new(
  letter_id: null,
  record_id: null,
  pms_specific_id: null,
  addressee: null,
  address: null,
  pdf: null,
  created: 2024-10-24T14:30:15+02:00,
  scheduled_send_date: 2024-10-24T14:30:15+02:00,
  sent: 2024-10-24T14:30:15+02:00,
  color: BlackAndWhite,
  delivery: Standard,
  state: Sent,
  state_details: The letter was sent to the postal provider,
  description: A4 Letter [BlackAndWhite, Standard Delivery, Sent],
  history: null
)
```

