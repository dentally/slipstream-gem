# SlipstreamClient::StreetAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | The first line of the street address. | [optional] |
| **address_line2** | **String** | The second line of the street address. | [optional] |
| **locality** | **String** | The city or locality. | [optional] |
| **region** | **String** | The region, state, or province. | [optional] |
| **postal_code** | **String** | The postal or ZIP code. | [optional] |
| **country** | **String** | The [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3#Officially_assigned_code_elements) Country code where the practice is located. |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::StreetAddress.new(
  address_line1: 123 Main St,
  address_line2: Apt 4,
  locality: San Francisco,
  region: CA,
  postal_code: 94107,
  country: USA
)
```

