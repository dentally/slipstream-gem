# SlipstreamClient::FormUserEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The slug that uniquely identifies the user | [optional] |
| **display_name** | **String** | The user&#39;s full name | [optional] |
| **first_name** | **String** | The user&#39;s first name | [optional] |
| **last_name** | **String** | The user&#39;s last name | [optional] |
| **birth_day** | **String** | The user&#39;s date of birth | [optional] |
| **email_address** | **String** | The user&#39;s email address | [optional] |
| **phone** | **String** | The user&#39;s phone number | [optional] |
| **link_slug** | **String** | The slug for the user&#39;s shortened link to visit the forms portal | [optional] |
| **full_link** | **String** | The long URL that the user was redirected to the forms portal | [optional] |
| **short_link** | **String** | The full short URL that will redirect to the forms portal (fullLink) | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormUserEvent.new(
  id: _7CaEBEDab2,
  display_name: John Smith,
  first_name: John,
  last_name: Smith,
  birth_day: 1990-01-01,
  email_address: john.smith@example.com,
  phone: +640212345678,
  link_slug: l7CaEBEDab2,
  full_link: https://forms.hsone.dev/s/s8n6EzC/u/_7CaEBEDab2/g/_p8BaECPNwEb0?sig&#x3D;abc123,
  short_link: https://l.hsone.app/l7CaEBEDab2
)
```

