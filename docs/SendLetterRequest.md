# OpenapiClient::SendLetterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pms_specific_id** | **String** | The unique ID of the letter in the pms system |  |
| **scheduled_send_date** | **Time** | The date to send the letter - omit or blank to send immediately | [optional] |
| **addressee** | [**Addressee**](Addressee.md) |  |  |
| **address** | [**StreetAddress**](StreetAddress.md) |  |  |
| **pdf** | [**DataUri**](DataUri.md) |  |  |
| **properties** | [**LetterProperties**](LetterProperties.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendLetterRequest.new(
  pms_specific_id: {064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e},
  scheduled_send_date: 2023-10-24T14:30:15+02:00,
  addressee: null,
  address: null,
  pdf: null,
  properties: null
)
```

