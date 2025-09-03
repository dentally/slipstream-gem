# SlipstreamClient::UpdateOnlineBookingSiteDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_active** | **Boolean** |  | [optional] |
| **client_identifier** | **String** | New client identifier | [optional] |
| **client_subscription_id** | **String** | New organisation id | [optional] |
| **client_unique_id** | **String** | New client unique id | [optional] |
| **name** | **String** | New name | [optional] |
| **use_provider_availability** | **Boolean** |  | [optional] |
| **use_direct_booking** | **Boolean** |  | [optional] |
| **use_new_cx_api_version** | **Boolean** |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UpdateOnlineBookingSiteDetailsRequest.new(
  is_active: null,
  client_identifier: null,
  client_subscription_id: null,
  client_unique_id: null,
  name: null,
  use_provider_availability: null,
  use_direct_booking: null,
  use_new_cx_api_version: null
)
```

