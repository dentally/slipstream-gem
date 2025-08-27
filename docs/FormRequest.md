# SlipstreamClient::FormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**FormType**](FormType.md) |  |  |
| **type_id** | **String** | A unique identifier for the type of form.  Only one form with a given typeId can be added to a form group  This field is required if the form type is custom, otherwise it will be defaulted to the type of the form.  | [optional] |
| **display_name** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **initial_state** | **Object** | Metadata used to prefill the form with. Enabling the form to have the  patient&#39;s previous responses for the same form to make reviewing and  submitting the form on subsequent visits more convenient.  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormRequest.new(
  type: null,
  type_id: MedicalHistory,
  display_name: null,
  initial_state: {&quot;title&quot;:&quot;Mr&quot;,&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Smith&quot;}
)
```

