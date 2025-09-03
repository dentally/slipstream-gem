# SlipstreamClient::SendLetterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **express** | **Boolean** | Whether the letter should be sent by express delivery. If omitted, the default is standard delivery. | [optional] |
| **double_sided** | **Boolean** | Whether the letter should be single or double sided. If omitted, the default is single sided. | [optional] |
| **color** | **Boolean** | Whether the letter should be printed in color. If omitted, the default is black and white. | [optional] |
| **pms_specific_id** | **String** | The unique ID of the letter in the pms system |  |
| **scheduled_send_date** | **Time** | The date to send the letter - omit or blank to send immediately | [optional] |
| **addressee** | [**Addressee**](Addressee.md) |  |  |
| **address** | [**StreetAddress**](StreetAddress.md) |  |  |
| **pdf** | [**DataUri**](DataUri.md) |  |  |
| **skip_address_validation** | **Boolean** | Whether to skip address validation of the recipient address | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::SendLetterRequest.new(
  express: false,
  double_sided: false,
  color: false,
  pms_specific_id: {064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e},
  scheduled_send_date: 2023-10-24T14:30:15+02:00,
  addressee: null,
  address: null,
  pdf: null,
  skip_address_validation: false
)
```

