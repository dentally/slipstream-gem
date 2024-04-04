# SlipstreamClient::ShortenedLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_slug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) |  |
| **primary_short_link** | **String** | The default url of the shortened link | [optional] |
| **full_link** | **String** | The full link that the shortened link redirects to | [optional] |
| **click_tracking_enabled** | **Boolean** | Whether to track clicks on the shortened link and emit an event the first time a link is used | [optional] |
| **sliding_expiration** | **String** | How long after the last use or change the link should expire | [optional] |
| **_alias** | **String** | A user specified alias which can be used to access the original link | [optional] |
| **primary_alias_link** | **String** | The default aliased url | [optional] |
| **visits** | **Integer** | The number of times the link has been used | [optional][readonly] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::ShortenedLink.new(
  link_slug: s8n6EzC,
  primary_short_link: https://l.hsone.app/l4n6EzC,
  full_link: https://www.google.com?q&#x3D;sqids,
  click_tracking_enabled: false,
  sliding_expiration: 90.00:00:00,
  _alias: null,
  primary_alias_link: https://l.hsone.app/sqids,
  visits: 0
)
```

