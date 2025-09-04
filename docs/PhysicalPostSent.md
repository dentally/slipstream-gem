# SlipstreamClient::PhysicalPostSent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **succeeded** | [**Array&lt;PostLetterRecordIdentity&gt;**](PostLetterRecordIdentity.md) | Physical letter successfully sent | [optional] |
| **failed** | [**Array&lt;PostLetterRecordIdentity&gt;**](PostLetterRecordIdentity.md) | Physical letter sent failed | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PhysicalPostSent.new(
  succeeded: null,
  failed: null
)
```

