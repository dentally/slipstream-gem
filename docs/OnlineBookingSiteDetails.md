# SlipstreamClient::OnlineBookingSiteDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** |  | [optional] |
| **client_identifier** | **String** | Unique identifier for the client, used for integration purposes | [optional] |
| **software** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  | [optional] |
| **client_subscription_id** | **String** | Unique identifier for the organisation, used for integration purposes | [optional] |
| **client_unique_id** | **String** | Unique identifier for the client, used for integration purposes | [optional] |
| **name** | **String** | Unique identifier for the organisation, used for integration purposes | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **scheduler_location_id** | **Integer** |  | [optional] |
| **scheduler_company_id** | **Integer** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **last_updated_on** | **Time** |  | [optional] |
| **last_polling_item_timestamp** | **Time** |  | [optional] |
| **last_polling_check_timestamp** | **Time** |  | [optional] |
| **use_provider_availability** | **Boolean** |  | [optional] |
| **use_direct_booking** | **Boolean** |  | [optional] |
| **use_new_cx_api_version** | **Boolean** |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::OnlineBookingSiteDetails.new(
  site_slug: null,
  client_identifier: null,
  software: null,
  client_subscription_id: null,
  client_unique_id: null,
  name: null,
  is_active: null,
  timezone: null,
  country: null,
  scheduler_location_id: null,
  scheduler_company_id: null,
  created_on: null,
  last_updated_on: null,
  last_polling_item_timestamp: null,
  last_polling_check_timestamp: null,
  use_provider_availability: null,
  use_direct_booking: null,
  use_new_cx_api_version: null
)
```

