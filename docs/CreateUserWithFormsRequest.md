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
  form_groups: [{&quot;displayName&quot;:&quot;New patient onboarding&quot;,&quot;Forms&quot;:[{&quot;displayName&quot;:&quot;Patient Demographics&quot;,&quot;Type&quot;:&quot;PatientDetails&quot;},{&quot;displayName&quot;:&quot;Medical History&quot;,&quot;Type&quot;:&quot;MedicalHistory&quot;},{&quot;displayName&quot;:&quot;Oral Health&quot;,&quot;Type&quot;:&quot;OralHealth&quot;}]}]
)
```

