# SlipstreamClient::LetterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **express** | **Boolean** | Whether the letter should be sent by express delivery. If omitted, the default is standard delivery. | [optional] |
| **double_sided** | **Boolean** | Whether the letter should be single or double sided. If omitted, the default is single sided. | [optional] |
| **color** | **Boolean** | Whether the letter should be printed in color. If omitted, the default is black and white. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::LetterProperties.new(
  express: false,
  double_sided: false,
  color: false
)
```

