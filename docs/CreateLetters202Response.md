# OpenapiClient::CreateLetters202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **succeeded** | [**Array&lt;RecordIdentity&gt;**](RecordIdentity.md) | Physical letter successfully sent | [optional] |
| **failed** | [**Array&lt;RecordIdentity&gt;**](RecordIdentity.md) | Physical letter sent failed | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateLetters202Response.new(
  succeeded: null,
  failed: null
)
```

