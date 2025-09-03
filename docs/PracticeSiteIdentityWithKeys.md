# SlipstreamClient::PracticeSiteIdentityWithKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**PracticeSiteIdentity**](PracticeSiteIdentity.md) |  | [optional] |
| **practice_site_api_keys** | [**ApiKeyPair**](ApiKeyPair.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PracticeSiteIdentityWithKeys.new(
  identity: null,
  practice_site_api_keys: null
)
```

