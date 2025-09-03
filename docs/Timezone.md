# SlipstreamClient::Timezone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the timezone. | [optional] |
| **std_abbreviation** | **String** | The standard abbreviation of the timezone. | [optional] |
| **std_offset_seconds** | **Integer** | The standard offset of the timezone in seconds. | [optional] |
| **dst_abbreviation** | **String** | The daylight savings abbreviation of the timezone. | [optional] |
| **dst_offset_seconds** | **Integer** | The daylight savings offset of the timezone in seconds. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::Timezone.new(
  name: America/Los_Angeles,
  std_abbreviation: PST,
  std_offset_seconds: -28800,
  dst_abbreviation: PDT,
  dst_offset_seconds: -25200
)
```

