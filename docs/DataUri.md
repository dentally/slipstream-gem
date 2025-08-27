# SlipstreamClient::DataUri

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | REQUIRED - The unique identifier for the data URI, used in combination with hash provided by a HEAD request to decide if re-downloading the data is necessary | [optional] |
| **data_uri** | **String** | REQUIRED - The URI to request the data from | [optional] |
| **expiry** | **Time** | The time at which the URI will expire | [optional] |
| **request_headers** | **Hash&lt;String, String&gt;** | The headers that should be sent with the GET request to retrieve the data | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::DataUri.new(
  id: 12345678-1234-1234-1234-1234567890ab,
  data_uri: https://staticinternalfilessa.blob.core.windows.net/images/Slipstream_tree_A4.pdf?sp&#x3D;r&amp;st&#x3D;2025-07-27T23:13:04Z&amp;se&#x3D;2026-11-30T20:30:00Z&amp;spr&#x3D;https&amp;sv&#x3D;2024-11-04&amp;sr&#x3D;b&amp;sig&#x3D;3VeGYN5nuwneXmTWhAiLnRjthiLFWPkga90TbFEQm%2BI%3D,
  expiry: 2021-01-01T00:00Z,
  request_headers: {&quot;X-API-KEY&quot;:&quot;1234567890abcdef1234567890abcdef&quot;,&quot;user-agent&quot;:&quot;slipstream/1.0.0&quot;,&quot;x-practice-site&quot;:&quot;dentallyuk34554&quot;}
)
```

