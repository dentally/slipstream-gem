# SlipstreamClient::BillingSummaryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_from** | **Date** | The Start Date of the billing summary period | [optional] |
| **date_to** | **Date** | The End Date of the billing summary period | [optional] |
| **items** | [**Array&lt;BillingSummary&gt;**](BillingSummary.md) | The billing summary items for the requested period | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BillingSummaryDetails.new(
  date_from: null,
  date_to: null,
  items: null
)
```

