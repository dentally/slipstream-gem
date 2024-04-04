# SlipstreamClient::LetterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **color** | **Boolean** | Whether the letter should be printed in color. If omitted, the default is black and white. | [optional] |
| **express** | **Boolean** | Whether the letter should be sent by express delivery. If omitted, the default is standard delivery. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::LetterProperties.new(
  color: false,
  express: false
)
```

