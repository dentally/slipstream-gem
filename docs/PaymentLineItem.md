# SlipstreamClient::PaymentLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **Integer** | An amount of money in [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#Minor_unit_fractions) minor units for the currency, e.g. 100 cents to charge $1.00 or 100 to charge ¥100 (a zero-decimal currency). The amount value supports up to eight digits, e.g. a value of 99999999 for a USD charge of $999,999.99. |  |
| **quantity** | **Integer** | The number of items. Default is 1. | [optional] |
| **product_name** | **String** | The product name |  |
| **product_description** | **String** | A description of the product | [optional] |
| **tax_behaviour** | [**PaymentTaxBehaviour**](PaymentTaxBehaviour.md) |  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentLineItem.new(
  price: 1000,
  quantity: 1,
  product_name: Whitening Toothpaste,
  product_description: null,
  tax_behaviour: null
)
```

