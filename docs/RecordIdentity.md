# SlipstreamClient::RecordIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The GUID of the record in slipstream - will be an empty GUID if the record was not created in slipstream | [optional] |
| **pms_specific_id** | **String** | The ID of the record in the pms system |  |
| **problem_details** | [**ProblemDetails**](ProblemDetails.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::RecordIdentity.new(
  id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  pms_specific_id: 064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e,
  problem_details: null
)
```

