# SlipstreamClient::OrganisationsApi

All URIs are relative to *https://dev.slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_organisation**](OrganisationsApi.md#delete_organisation) | **DELETE** /management/organisations/{OrganisationIdentifier} | Delete an organisation |
| [**get_organisation**](OrganisationsApi.md#get_organisation) | **GET** /management/organisations/{OrganisationIdentifier} | Get an organisation |
| [**get_organisation_identity**](OrganisationsApi.md#get_organisation_identity) | **GET** /management/organisations/{OrganisationIdentifier}/identity | Get organisation identity |
| [**onboard_organisation**](OrganisationsApi.md#onboard_organisation) | **POST** /management/organisations/{OrganisationIdentifier} | Upsert organisation |


## delete_organisation

> String delete_organisation(organisation_identifier, opts)

Delete an organisation

Deletes an organisation from the slipstream practice registry. Will fail if the organisation owns any practice sites - delete the sites first

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_identifier = 'organisation_identifier_example' # String | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::UNKNOWN # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Delete an organisation
  result = api_instance.delete_organisation(organisation_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->delete_organisation: #{e}"
end
```

#### Using the delete_organisation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_organisation_with_http_info(organisation_identifier, opts)

```ruby
begin
  # Delete an organisation
  data, status_code, headers = api_instance.delete_organisation_with_http_info(organisation_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->delete_organisation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_identifier** | **String** | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

**String**

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_organisation

> <OrganisationDetails> get_organisation(organisation_identifier, opts)

Get an organisation

Fetches the details of a given organisation in slipstream

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_identifier = 'organisation_identifier_example' # String | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::UNKNOWN # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Get an organisation
  result = api_instance.get_organisation(organisation_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_organisation: #{e}"
end
```

#### Using the get_organisation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganisationDetails>, Integer, Hash)> get_organisation_with_http_info(organisation_identifier, opts)

```ruby
begin
  # Get an organisation
  data, status_code, headers = api_instance.get_organisation_with_http_info(organisation_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganisationDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_organisation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_identifier** | **String** | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**OrganisationDetails**](OrganisationDetails.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_organisation_identity

> <OrganisationIdentity> get_organisation_identity(organisation_identifier, opts)

Get organisation identity

Fetches the identity of a given organisation in slipstream

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_identifier = 'organisation_identifier_example' # String | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::UNKNOWN # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Get organisation identity
  result = api_instance.get_organisation_identity(organisation_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_organisation_identity: #{e}"
end
```

#### Using the get_organisation_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganisationIdentity>, Integer, Hash)> get_organisation_identity_with_http_info(organisation_identifier, opts)

```ruby
begin
  # Get organisation identity
  data, status_code, headers = api_instance.get_organisation_identity_with_http_info(organisation_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganisationIdentity>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_organisation_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_identifier** | **String** | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**OrganisationIdentity**](OrganisationIdentity.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## onboard_organisation

> <OrganisationIdentity> onboard_organisation(organisation_identifier, organisation_onboarding_request, opts)

Upsert organisation

Creates or updates an organisation in the slipstream practice registry and returns a unique identifier

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_identifier = 'organisation_identifier_example' # String | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites
organisation_onboarding_request = SlipstreamClient::OrganisationOnboardingRequest.new({name: 'Dental Mega Corp'}) # OrganisationOnboardingRequest | The details of the organisation to onboard
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::UNKNOWN # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Upsert organisation
  result = api_instance.onboard_organisation(organisation_identifier, organisation_onboarding_request, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->onboard_organisation: #{e}"
end
```

#### Using the onboard_organisation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganisationIdentity>, Integer, Hash)> onboard_organisation_with_http_info(organisation_identifier, organisation_onboarding_request, opts)

```ruby
begin
  # Upsert organisation
  data, status_code, headers = api_instance.onboard_organisation_with_http_info(organisation_identifier, organisation_onboarding_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganisationIdentity>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->onboard_organisation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_identifier** | **String** | The PMS-specific id that uniquely identifies an organisation (What you call the organisation in your software), which owns one or more practice sites |  |
| **organisation_onboarding_request** | [**OrganisationOnboardingRequest**](OrganisationOnboardingRequest.md) | The details of the organisation to onboard |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**OrganisationIdentity**](OrganisationIdentity.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

