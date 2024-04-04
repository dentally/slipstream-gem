# OpenapiClient::ShortLinksCreatedResponseFailedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full_link** | **String** |  | [optional] |
| **error** | [**ProblemDetails**](ProblemDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ShortLinksCreatedResponseFailedInner.new(
  full_link: https://www.google.com?q&#x3D;sqids,
  error: null
)
```

