# SlipstreamClient::LetterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **express** | **Boolean** | Whether the letter should be sent by express delivery. If omitted, the default is standard delivery. | [optional] |
| **double_sided** | **Boolean** | Whether the letter should be single or double sided. If omitted, the default is single sided. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::LetterProperties.new(
  express: false,
  double_sided: false
)
```

