# SlipstreamClient::PaymentAccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier for the payment account | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |
| **status** | [**PaymentAccountStatus**](PaymentAccountStatus.md) |  | [optional] |
| **created_at** | **Time** | When the payment was created in ISO8601 format | [optional] |
| **external_account_id** | **String** | The account id for the payment provider | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountDetails.new(
  account_id: 123e4567-e89b-12d3-a456-426614174000,
  payment_provider: null,
  status: null,
  created_at: 2024-10-24T14:30:15+02:00,
  external_account_id: null
)
```

