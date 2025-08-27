# SlipstreamClient::ValidateAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the address | [optional] |
| **address** | [**StreetAddress**](StreetAddress.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ValidateAddressRequest.new(
  id: null,
  address: null
)
```

