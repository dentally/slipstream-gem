# SlipstreamClient::PractitionersUploadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **warnings** | **Array&lt;String&gt;** | Non-fatal warnings encountered during processing | [optional] |
| **results** | [**Array&lt;PractitionerUploadResult&gt;**](PractitionerUploadResult.md) | Individual results for each practitioner upload | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PractitionersUploadResponse.new(
  warnings: [&quot;Practitioner &#39;DR-456&#39; photo URL is not accessible&quot;],
  results: null
)
```

