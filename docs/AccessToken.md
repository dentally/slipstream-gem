# SlipstreamClient::AccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The access token issued by the authorization server. |  |
| **token_type** | **String** | The type of the token, typically &#39;Bearer&#39;. |  |
| **expires_in** | **Integer** | The lifetime in seconds of the access token. | [optional] |
| **scope** | **String** | The scopes for which the token is valid. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::AccessToken.new(
  access_token: null,
  token_type: null,
  expires_in: null,
  scope: null
)
```

