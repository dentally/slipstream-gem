# SlipstreamClient::FormGroupWithFormsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **expires_at** | **Time** | The date and time when the form group expires, if omitted this defaults to 30 days from creation | [optional] |
| **forms** | [**Array&lt;FormRequest&gt;**](FormRequest.md) | The forms that are part of this group | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupWithFormsRequest.new(
  display_name: New patient onboarding,
  expires_at: null,
  forms: [{&quot;displayName&quot;:&quot;Terms and Conditions&quot;,&quot;type&quot;:&quot;TermsAndConditions&quot;},{&quot;displayName&quot;:&quot;Patient Details&quot;,&quot;type&quot;:&quot;PatientDetails&quot;},{&quot;displayName&quot;:&quot;Medical History&quot;,&quot;type&quot;:&quot;MedicalHistory&quot;},{&quot;displayName&quot;:&quot;Oral Health&quot;,&quot;type&quot;:&quot;OralHealth&quot;},{&quot;displayName&quot;:&quot;Contact Consent&quot;,&quot;type&quot;:&quot;ContactConsent&quot;},{&quot;displayName&quot;:&quot;Health Screening&quot;,&quot;type&quot;:&quot;HealthScreening&quot;}]
)
```

