# SlipstreamClient::CreateUserWithFormsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**FormUserRequest**](FormUserRequest.md) |  |  |
| **form_groups** | [**Array&lt;FormGroupWithFormsRequest&gt;**](FormGroupWithFormsRequest.md) | Groups of forms that the user will fill out |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CreateUserWithFormsRequest.new(
  user: null,
  form_groups: [{&quot;displayName&quot;:&quot;New patient onboarding&quot;,&quot;forms&quot;:[{&quot;displayName&quot;:&quot;Terms and Conditions&quot;,&quot;type&quot;:&quot;TermsAndConditions&quot;},{&quot;displayName&quot;:&quot;Patient Demographics&quot;,&quot;type&quot;:&quot;PatientDetails&quot;,&quot;initialState&quot;:{&quot;title&quot;:&quot;Mr&quot;,&quot;firstName&quot;:&quot;John&quot;,&quot;lastName&quot;:&quot;Smith&quot;,&quot;sex&quot;:&quot;Male&quot;,&quot;dateOfBirth&quot;:&quot;1990-01-01T00:00:00.0000000+00:00&quot;,&quot;occupation&quot;:&quot;Software Engineer&quot;,&quot;email&quot;:&quot;john.smith@example.com&quot;,&quot;mobilePhone&quot;:&quot;+641234567890&quot;,&quot;homePhone&quot;:&quot;&quot;,&quot;workPhone&quot;:&quot;&quot;,&quot;addressLine1&quot;:&quot;123 Main St&quot;,&quot;addressLine2&quot;:&quot;&quot;,&quot;city&quot;:&quot;Auckland&quot;,&quot;state&quot;:&quot;&quot;,&quot;postCode&quot;:&quot;1021&quot;}},{&quot;displayName&quot;:&quot;Medical History&quot;,&quot;type&quot;:&quot;MedicalHistory&quot;},{&quot;displayName&quot;:&quot;Oral Health&quot;,&quot;type&quot;:&quot;OralHealth&quot;},{&quot;displayName&quot;:&quot;Contact Consent&quot;,&quot;type&quot;:&quot;ContactConsent&quot;},{&quot;displayName&quot;:&quot;Health Screening&quot;,&quot;type&quot;:&quot;HealthScreening&quot;}]}]
)
```

