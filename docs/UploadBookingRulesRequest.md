# SlipstreamClient::UploadBookingRulesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;BookingPermutationUpload&gt;**](BookingPermutationUpload.md) | The booking rules to upload. All existing rules will be replaced. |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UploadBookingRulesRequest.new(
  rules: null
)
```

