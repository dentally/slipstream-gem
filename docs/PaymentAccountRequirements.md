# SlipstreamClient::PaymentAccountRequirements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currently_due** | **Array&lt;String&gt;** | The requirements that are currently due | [optional] |
| **current_deadline** | **Time** | The deadline for the currently due requirements | [optional] |
| **disabled_reason** | **String** | The reason the account is disabled | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountRequirements.new(
  currently_due: [&quot;identity_verification&quot;,&quot;tax_id&quot;],
  current_deadline: null,
  disabled_reason: null
)
```

