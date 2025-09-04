# SlipstreamClient::ValidatedAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The PMS specific ID of the address | [optional] |
| **addresses** | [**Array&lt;StreetAddressEx&gt;**](StreetAddressEx.md) | The validated Addresses | [optional] |
| **status** | [**AddressValidationStatus**](AddressValidationStatus.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ValidatedAddress.new(
  id: null,
  addresses: null,
  status: null
)
```

