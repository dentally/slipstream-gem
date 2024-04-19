# SlipstreamClient::BillingSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The SKU of the billing item | [optional] |
| **sku_description** | **String** | A human-friendly description of what the SKU represents | [optional] |
| **pax** | **Integer** | The number of SKU units that are being billed for this item | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BillingSummary.new(
  sku: POST.LETTER.A4,
  sku_description: POST - LETTER (A4),
  pax: null
)
```

