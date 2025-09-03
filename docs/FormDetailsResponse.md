# SlipstreamClient::FormDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_state** | **Object** | The users responses to the form | [optional] |
| **response_file_url** | **String** | A url to the user&#39;s response rendered as a file in a portable format (HTML, PDF, etc) | [optional] |
| **submitted_date** | **Time** | Whether the user has submitted the form | [optional] |
| **started_date** | **Time** | Whether the user has started the form | [optional] |
| **slug** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **type** | [**FormType**](FormType.md) |  |  |
| **type_id** | **String** | A unique identifier for the type of form.  Only one form with a given typeId can be added to a form group  This field is required if the form type is custom, otherwise it will be defaulted to the type of the form.  | [optional] |
| **display_name** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **initial_state** | **Object** | Metadata used to prefill the form with. Enabling the form to have the  patient&#39;s previous responses for the same form to make reviewing and  submitting the form on subsequent visits more convenient.  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormDetailsResponse.new(
  current_state: {&quot;title&quot;:&quot;Mr&quot;,&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Smith&quot;},
  response_file_url: null,
  submitted_date: 2024-10-24T14:30:15+02:00,
  started_date: 2024-10-24T14:30:15+02:00,
  slug: null,
  type: null,
  type_id: MedicalHistory,
  display_name: null,
  initial_state: {title&#x3D;Mr, firstName&#x3D;John, lastName&#x3D;Smith}
)
```

