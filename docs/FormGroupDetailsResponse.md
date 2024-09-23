# SlipstreamClient::FormGroupDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A URL-safe unique identifier for the user (See [Sqids](https://sqids.org)) | [optional] |
| **link** | **String** | The link for the forms for the user | [optional] |
| **expires_at** | **Time** | The date and time when the form group expires, if omitted this defaults to 30 days from creation | [optional] |
| **display_name** | **String** | The display name for the form group - should represent a purpose for the forms to be filled e.g. \&quot;New patient onboarding\&quot; or \&quot;Appointment with Dr. Smith on 1/1/2022\&quot; |  |
| **forms** | [**Array&lt;Form&gt;**](Form.md) | The forms that are part of this group | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::FormGroupDetailsResponse.new(
  slug: _8n6EzC,
  link: https://l.hsone.app/l67efrtN,
  expires_at: null,
  display_name: New patient onboarding,
  forms: [{displayName&#x3D;Terms and Conditions, type&#x3D;TermsAndConditions}, {displayName&#x3D;Patient Details, type&#x3D;PatientDetails}, {displayName&#x3D;Medical History, type&#x3D;MedicalHistory}, {displayName&#x3D;Oral Health, type&#x3D;OralHealth}, {displayName&#x3D;Contact Consent, type&#x3D;ContactConsent}, {displayName&#x3D;Health Screening, type&#x3D;HealthScreening}]
)
```

