# SlipstreamClient::UploadPractitionersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **practitioners** | [**Array&lt;PractitionerUpload&gt;**](PractitionerUpload.md) | The practitioners to upload. Existing practitioners with matching external_id will be updated. |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UploadPractitionersRequest.new(
  practitioners: null
)
```

