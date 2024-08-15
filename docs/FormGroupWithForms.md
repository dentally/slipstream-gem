# SlipstreamClient::FormGroupWithForms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for the user (See [Sqids](https://sqids.org)) | [optional] |
| **link** | **String** | The link for the forms for the user | [optional] |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **expires_at** | **Time** | The date and time when the form group expires | [optional] |
| **forms** | [**Array&lt;Form&gt;**](Form.md) | The forms that are part of this group | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupWithForms.new(
  slug: _8n6EzC,
  link: https://l.hsone.app/l67efrtN,
  display_name: New patient onboarding,
  expires_at: 2024-12-31T23:59:59Z,
  forms: [{&quot;displayName&quot;:&quot;Patient Demographics&quot;,&quot;Type&quot;:&quot;PatientDemographics&quot;},{&quot;displayName&quot;:&quot;Medical History&quot;,&quot;Type&quot;:&quot;MedicalHistory&quot;}]
)
```

