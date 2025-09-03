# SlipstreamClient::BookingRulesUploadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **warnings** | **Array&lt;String&gt;** | Non-fatal warnings about the upload | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::BookingRulesUploadResponse.new(
  warnings: [&quot;Practitioner &#39;DR-999&#39; not found&quot;,&quot;Failed to process rule for DR-888: Invalid payor type&quot;]
)
```

