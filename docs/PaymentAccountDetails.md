# SlipstreamClient::PaymentAccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the payment account | [optional] |
| **external_id** | **String** | The payment account id issued by the payment provider | [optional] |
| **payment_provider** | [**PaymentProvider**](PaymentProvider.md) |  | [optional] |
| **status** | [**PaymentAccountStatus**](PaymentAccountStatus.md) |  | [optional] |
| **created_at** | **Time** | When the payment was created in ISO8601 format | [optional] |
| **updated_at** | **Time** | When the payment was last updated in ISO8601 format | [optional] |
| **requirements** | [**PaymentAccountRequirements**](PaymentAccountRequirements.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountDetails.new(
  id: 123e4567-e89b-12d3-a456-426614174000,
  external_id: acct_1234567890,
  payment_provider: null,
  status: null,
  created_at: 2024-10-24T14:30:15+02:00,
  updated_at: 2024-10-24T14:30:15+02:00,
  requirements: null
)
```

