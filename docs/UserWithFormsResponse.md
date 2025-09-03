# SlipstreamClient::UserWithFormsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for the user (See [Sqids](https://sqids.org)) | [optional] |
| **link** | **String** | The link for the forms for the user | [optional] |
| **form_groups** | [**Array&lt;FormGroupWithForms&gt;**](FormGroupWithForms.md) | The groups of forms assigned for the user to fill | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::UserWithFormsResponse.new(
  slug: _8n6EzC,
  link: https://l.hsone.app/l67fHrN,
  form_groups: null
)
```

