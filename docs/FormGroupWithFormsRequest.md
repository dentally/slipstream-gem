# SlipstreamClient::FormGroupWithFormsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **expires_at** | **Time** | The date and time when the form group expires | [optional] |
| **forms** | [**Array&lt;FormRequest&gt;**](FormRequest.md) | The forms that are part of this group | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupWithFormsRequest.new(
  display_name: New patient onboarding,
  expires_at: 2024-12-31T23:59:59Z,
  forms: [{&quot;displayName&quot;:&quot;Patient Demographics&quot;,&quot;Type&quot;:&quot;PatientDetails&quot;},{&quot;displayName&quot;:&quot;Medical History&quot;,&quot;Type&quot;:&quot;MedicalHistory&quot;},{&quot;displayName&quot;:&quot;Smile Survey&quot;,&quot;Type&quot;:&quot;OralHealth&quot;}]
)
```

