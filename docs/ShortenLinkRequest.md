# SlipstreamClient::ShortenLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full_link** | **String** | The full link that the shortened link will redirect to |  |
| **click_tracking_enabled** | **Boolean** | Whether to track clicks on the shortened link and emit events the first time a link is used. Default is false. | [optional] |
| **expiration** | **String** | How long before the link expires and redirects to a 404 page. Default is 90 days | [optional] |
| **_alias** | **String** | A custom slug to use as the shortened link. If not provided, a random slug will be generated | [optional] |
| **return_url** | **String** | An optional Url to redirect to after the link expires | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ShortenLinkRequest.new(
  full_link: https://www.google.com?q&#x3D;sqids,
  click_tracking_enabled: false,
  expiration: P90D,
  _alias: null,
  return_url: https://www.google.com?q&#x3D;expired
)
```

