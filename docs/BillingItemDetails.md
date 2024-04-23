# SlipstreamClient::BillingItemDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the billing item in slipstream |  |
| **event_id** | **String** | The identifier of the event the billing item is related to | [optional] |
| **related_item_id** | **String** | The unique identifier of the billable item this record represents (e.g. a letter) | [optional] |
| **sku** | **String** | The SKU of the billing item | [optional] |
| **sku_description** | **String** | A human-friendly description of what the SKU represents | [optional] |
| **pax** | **Integer** | The number of SKU units that are being billed for this item | [optional] |
| **site_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **billing_organisation_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **timestamp** | **Time** | When the billable item was recorded in ISO8601 format | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BillingItemDetails.new(
  id: null,
  event_id: null,
  related_item_id: null,
  sku: POST.LETTER.A4,
  sku_description: POST - LETTER (A4),
  pax: null,
  site_slug: s8n6EzC,
  billing_organisation_slug: s8n6EzC,
  timestamp: 2024-10-24T14:30:15+02:00
)
```

