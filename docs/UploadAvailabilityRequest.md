# SlipstreamClient::UploadAvailabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **availability** | [**Array&lt;AvailabilityUpload&gt;**](AvailabilityUpload.md) | The availability slots to upload. All existing availability for the specified combinations will be replaced. |  |
| **is_full_upload** | **Boolean** | Default false. If true, all existing availability for the specified combinations will be deleted and replaced with the provided data. | [optional][default to false] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UploadAvailabilityRequest.new(
  availability: null,
  is_full_upload: null
)
```

