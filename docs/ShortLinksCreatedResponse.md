# SlipstreamClient::ShortLinksCreatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **succeeded** | [**Array&lt;ShortenedLink&gt;**](ShortenedLink.md) | The created short links | [optional] |
| **failed** | [**Array&lt;ShortLinksCreatedResponseFailedInner&gt;**](ShortLinksCreatedResponseFailedInner.md) | The short links that could not be created | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ShortLinksCreatedResponse.new(
  succeeded: null,
  failed: null
)
```

