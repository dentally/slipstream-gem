# SlipstreamClient::AccessTokenDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **roles** | **Array&lt;String&gt;** | The roles which this token bestows on the holder | [optional] |
| **client_id** | **String** | The client id of the application that requested the token. | [optional] |
| **expiry** | **Time** | The expiry date of the access token. | [optional] |
| **audience** | **String** | The audience for which the token is valid. | [optional] |
| **software** | [**Array&lt;PracticeManagementSoftware&gt;**](PracticeManagementSoftware.md) | The practice management software system(s) that this token is valid for. | [optional] |
| **issuer** | **String** | The issuer of the token. | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::AccessTokenDetails.new(
  roles: null,
  client_id: null,
  expiry: null,
  audience: null,
  software: null,
  issuer: null
)
```

