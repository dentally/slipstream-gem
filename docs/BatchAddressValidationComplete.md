# SlipstreamClient::BatchAddressValidationComplete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id of the batch | [optional] |
| **addresses** | [**Array&lt;ValidatedAddress&gt;**](ValidatedAddress.md) | A collection of addresses that includes their original Id and the validation status | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BatchAddressValidationComplete.new(
  id: null,
  addresses: null
)
```

