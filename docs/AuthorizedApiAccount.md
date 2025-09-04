# SlipstreamClient::AuthorizedApiAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The unique identifier for the API account | [optional] |
| **display_name** | **String** | The display name of the API account | [optional] |
| **email** | **String** | The email address associated with the API account | [optional] |
| **website** | **String** | The website associated with the API account | [optional] |
| **phone** | **String** | Contact phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164) | [optional] |
| **organisation_slug** | **String** | A URL-safe unique identifier for an organisation which owns sites and/or pays their bills (See [Sqids](https://sqids.org)) | [optional] |
| **quota** | [**ClientQuota**](ClientQuota.md) |  | [optional] |
| **permissions** | [**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::AuthorizedApiAccount.new(
  identifier: 7a1b3c5d-9e8f-4a2b-6c7d-8e9f0a1b2c3d,
  display_name: Partnerships Inc.,
  email: john.smith@gmail.com,
  website: https://www.partnershipsinc.com,
  phone: +1 555-555-5555,
  organisation_slug: o8n6EzC,
  quota: null,
  permissions: null
)
```

