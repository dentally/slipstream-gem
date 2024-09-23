# SlipstreamClient::Form

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **type** | [**FormType**](FormType.md) |  |  |
| **type_id** | **String** | A unique identifier for the type of form.  Only one form with a given typeId can be added to a form group  This field is required if the form type is custom, otherwise it will be defaulted to the type of the form.  | [optional] |
| **display_name** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **initial_state** | **Object** | Metadata used to prefill the form with. Enabling the form to have the  patient&#39;s previous responses for the same form to make reviewing and  submitting the form on subsequent visits more convenient.  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::Form.new(
  slug: null,
  type: null,
  type_id: MedicalHistory,
  display_name: null,
  initial_state: {title&#x3D;Mr, firstName&#x3D;John, lastName&#x3D;Smith}
)
```

