# SlipstreamClient::FormDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response_json** | **String** | The users response to the form in JSON format | [optional] |
| **response_file_url** | **String** | A url to the user&#39;s response rendered as a file in a portable format (HTML, PDF, etc) | [optional] |
| **slug** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **type** | [**FormType**](FormType.md) |  |  |
| **type_id** | **String** | A unique identifier for the type of form.  Only one form with a given typeId can be added to a form group  This field is required if the form type is custom, otherwise it will be defaulted to the type of the form.  | [optional] |
| **display_name** | **String** | The name of the form to show the user. Leave null to use the Type / TypeId | [optional] |
| **prefill_json** | **String** | A JSON string with data to prefill the form with. This can be used to pre-populate the form with the  patient&#39;s previous responses for the same form to make reviewing and submitting the form on subsequent visits more convenient.  | [optional] |
| **expires_at** | **Time** | The date and time when the form expires | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormDetailsResponse.new(
  response_json: null,
  response_file_url: null,
  slug: null,
  type: null,
  type_id: medicalhistory,
  display_name: null,
  prefill_json: null,
  expires_at: 2024-12-31T23:59:59Z
)
```

