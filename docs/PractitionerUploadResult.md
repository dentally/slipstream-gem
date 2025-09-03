# SlipstreamClient::PractitionerUploadResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The external ID of the practitioner |  |
| **success** | **Boolean** | Whether the practitioner was successfully uploaded |  |
| **error_message** | **String** | Error message if the upload failed | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PractitionerUploadResult.new(
  external_id: DR-123,
  success: true,
  error_message: Invalid provider type
)
```

