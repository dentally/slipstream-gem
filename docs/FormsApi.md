# SlipstreamClient::FormsApi

All URIs are relative to *https://slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_form_to_group**](FormsApi.md#add_form_to_group) | **POST** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug}/forms | Add forms to a form group, or reset them if they already exists (allowing it to be refilled) |
| [**create_form_group**](FormsApi.md#create_form_group) | **POST** /sites/{SiteSlug}/forms/users/{UserSlug}/groups | Create a form group for a user |
| [**create_user_and_forms**](FormsApi.md#create_user_and_forms) | **POST** /sites/{SiteSlug}/forms | Create a user with forms |
| [**delete_form**](FormsApi.md#delete_form) | **DELETE** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug}/forms/{FormSlug} | Delete a form |
| [**delete_form_group**](FormsApi.md#delete_form_group) | **DELETE** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug} | Delete a form group |
| [**delete_user_and_forms**](FormsApi.md#delete_user_and_forms) | **DELETE** /sites/{SiteSlug}/forms/users/{UserSlug} | Delete a form user record |
| [**get_form_group**](FormsApi.md#get_form_group) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug} | Get a form group |
| [**get_form_user**](FormsApi.md#get_form_user) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug} | Get patient details |
| [**get_group_form_details**](FormsApi.md#get_group_form_details) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug}/forms/{FormSlug} | Get form details |
| [**get_user_form_details**](FormsApi.md#get_user_form_details) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug}/forms/{FormTypeOrId} | Get form details |
| [**list_form_groups_for_user**](FormsApi.md#list_form_groups_for_user) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug}/groups | List form groups for a user |
| [**list_form_users**](FormsApi.md#list_form_users) | **GET** /sites/{SiteSlug}/forms/users | List Form Users |
| [**list_forms_in_group**](FormsApi.md#list_forms_in_group) | **GET** /sites/{SiteSlug}/forms/users/{UserSlug}/groups/{GroupSlug}/forms | List forms for a form group |
| [**update_form_user**](FormsApi.md#update_form_user) | **PATCH** /sites/{SiteSlug}/forms/users/{UserSlug} | Update a form user |


## add_form_to_group

> add_form_to_group(site_slug, user_slug, group_slug, create_forms_request)

Add forms to a form group, or reset them if they already exists (allowing it to be refilled)

Add/Reset one or more forms to an existing form group

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group
create_forms_request = SlipstreamClient::CreateFormsRequest.new({type: SlipstreamClient::FormType::CUSTOM}) # CreateFormsRequest | 

begin
  # Add forms to a form group, or reset them if they already exists (allowing it to be refilled)
  api_instance.add_form_to_group(site_slug, user_slug, group_slug, create_forms_request)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->add_form_to_group: #{e}"
end
```

#### Using the add_form_to_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_form_to_group_with_http_info(site_slug, user_slug, group_slug, create_forms_request)

```ruby
begin
  # Add forms to a form group, or reset them if they already exists (allowing it to be refilled)
  data, status_code, headers = api_instance.add_form_to_group_with_http_info(site_slug, user_slug, group_slug, create_forms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->add_form_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |
| **create_forms_request** | [**CreateFormsRequest**](CreateFormsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json


## create_form_group

> <FormGroupDetailsResponse> create_form_group(site_slug, user_slug, create_form_group_request)

Create a form group for a user

Creates a form group with zero or more forms for a user to fill out

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
create_form_group_request = SlipstreamClient::CreateFormGroupRequest.new({form_group: SlipstreamClient::FormGroupWithFormsRequest.new({display_name: 'New patient onboarding'})}) # CreateFormGroupRequest | 

begin
  # Create a form group for a user
  result = api_instance.create_form_group(site_slug, user_slug, create_form_group_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->create_form_group: #{e}"
end
```

#### Using the create_form_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormGroupDetailsResponse>, Integer, Hash)> create_form_group_with_http_info(site_slug, user_slug, create_form_group_request)

```ruby
begin
  # Create a form group for a user
  data, status_code, headers = api_instance.create_form_group_with_http_info(site_slug, user_slug, create_form_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormGroupDetailsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->create_form_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **create_form_group_request** | [**CreateFormGroupRequest**](CreateFormGroupRequest.md) |  |  |

### Return type

[**FormGroupDetailsResponse**](FormGroupDetailsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_user_and_forms

> <UserWithFormsResponse> create_user_and_forms(site_slug, create_user_with_forms_request)

Create a user with forms

Creates a user and a set of forms for them to fill out

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
create_user_with_forms_request = SlipstreamClient::CreateUserWithFormsRequest.new({user: SlipstreamClient::FormUserRequest.new({display_name: 'John Smith', last_name: 'Smith'}), form_groups: [{"displayName": "New patient onboarding", "forms": [{"displayName": "Terms and Conditions", "type": "TermsAndConditions"}, {"displayName": "Patient Demographics", "type": "PatientDetails", "initialState": {"title": "Mr", "firstName": "John", "lastName": "Smith", "sex": "Male", "dateOfBirth": "1990-01-01T00: 00: 00.0000000+00: 00", "occupation": "Software Engineer", "email": "john.smith@example.com", "mobilePhone": "+641234567890", "homePhone": "", "workPhone": "", "addressLine1": "123 Main St", "addressLine2": "", "city": "Auckland", "state": "", "postCode": "1021"}}, {"displayName": "Medical History", "type": "MedicalHistory"}, {"displayName": "Oral Health", "type": "OralHealth"}, {"displayName": "Contact Consent", "type": "ContactConsent"}, {"displayName": "Health Screening", "type": "HealthScreening"}]}]}) # CreateUserWithFormsRequest | 

begin
  # Create a user with forms
  result = api_instance.create_user_and_forms(site_slug, create_user_with_forms_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->create_user_and_forms: #{e}"
end
```

#### Using the create_user_and_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserWithFormsResponse>, Integer, Hash)> create_user_and_forms_with_http_info(site_slug, create_user_with_forms_request)

```ruby
begin
  # Create a user with forms
  data, status_code, headers = api_instance.create_user_and_forms_with_http_info(site_slug, create_user_with_forms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserWithFormsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->create_user_and_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **create_user_with_forms_request** | [**CreateUserWithFormsRequest**](CreateUserWithFormsRequest.md) |  |  |

### Return type

[**UserWithFormsResponse**](UserWithFormsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_form

> delete_form(site_slug, user_slug, group_slug, form_slug)

Delete a form

Delete a form from the group

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group
form_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form

begin
  # Delete a form
  api_instance.delete_form(site_slug, user_slug, group_slug, form_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_form: #{e}"
end
```

#### Using the delete_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_form_with_http_info(site_slug, user_slug, group_slug, form_slug)

```ruby
begin
  # Delete a form
  data, status_code, headers = api_instance.delete_form_with_http_info(site_slug, user_slug, group_slug, form_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |
| **form_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## delete_form_group

> delete_form_group(site_slug, user_slug, group_slug)

Delete a form group

Delete a form group and the associated forms

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group

begin
  # Delete a form group
  api_instance.delete_form_group(site_slug, user_slug, group_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_form_group: #{e}"
end
```

#### Using the delete_form_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_form_group_with_http_info(site_slug, user_slug, group_slug)

```ruby
begin
  # Delete a form group
  data, status_code, headers = api_instance.delete_form_group_with_http_info(site_slug, user_slug, group_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_form_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## delete_user_and_forms

> delete_user_and_forms(site_slug, user_slug)

Delete a form user record

Delete a form user record and all its associated form data

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user

begin
  # Delete a form user record
  api_instance.delete_user_and_forms(site_slug, user_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_user_and_forms: #{e}"
end
```

#### Using the delete_user_and_forms_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_and_forms_with_http_info(site_slug, user_slug)

```ruby
begin
  # Delete a form user record
  data, status_code, headers = api_instance.delete_user_and_forms_with_http_info(site_slug, user_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->delete_user_and_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_form_group

> <FormGroupDetailsResponse> get_form_group(site_slug, user_slug, group_slug)

Get a form group

Get a form group and the associated forms

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group

begin
  # Get a form group
  result = api_instance.get_form_group(site_slug, user_slug, group_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_form_group: #{e}"
end
```

#### Using the get_form_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormGroupDetailsResponse>, Integer, Hash)> get_form_group_with_http_info(site_slug, user_slug, group_slug)

```ruby
begin
  # Get a form group
  data, status_code, headers = api_instance.get_form_group_with_http_info(site_slug, user_slug, group_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormGroupDetailsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_form_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |

### Return type

[**FormGroupDetailsResponse**](FormGroupDetailsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_form_user

> <FormUserDetailsResponse> get_form_user(site_slug, user_slug, opts)

Get patient details

Gets the details of a patient

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
opts = {
  include_form_groups: false # Boolean | If true, the response will include the form groups of the user
}

begin
  # Get patient details
  result = api_instance.get_form_user(site_slug, user_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_form_user: #{e}"
end
```

#### Using the get_form_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormUserDetailsResponse>, Integer, Hash)> get_form_user_with_http_info(site_slug, user_slug, opts)

```ruby
begin
  # Get patient details
  data, status_code, headers = api_instance.get_form_user_with_http_info(site_slug, user_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormUserDetailsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_form_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **include_form_groups** | **Boolean** | If true, the response will include the form groups of the user | [optional] |

### Return type

[**FormUserDetailsResponse**](FormUserDetailsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_group_form_details

> <FormDetailsResponse> get_group_form_details(site_slug, user_slug, group_slug, form_slug)

Get form details

Gets the form details with the user's responses

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group
form_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form

begin
  # Get form details
  result = api_instance.get_group_form_details(site_slug, user_slug, group_slug, form_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_group_form_details: #{e}"
end
```

#### Using the get_group_form_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormDetailsResponse>, Integer, Hash)> get_group_form_details_with_http_info(site_slug, user_slug, group_slug, form_slug)

```ruby
begin
  # Get form details
  data, status_code, headers = api_instance.get_group_form_details_with_http_info(site_slug, user_slug, group_slug, form_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormDetailsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_group_form_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |
| **form_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form |  |

### Return type

[**FormDetailsResponse**](FormDetailsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_user_form_details

> <FormDetailsResponse> get_user_form_details(site_slug, user_slug, form_type_or_id)

Get form details

Gets the form with the user's responses

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
form_type_or_id = '_8n6EzC' # String | The type of form to retrieve, or the form's unique identifier (TypeId) assigned by the client/PMS

begin
  # Get form details
  result = api_instance.get_user_form_details(site_slug, user_slug, form_type_or_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_user_form_details: #{e}"
end
```

#### Using the get_user_form_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormDetailsResponse>, Integer, Hash)> get_user_form_details_with_http_info(site_slug, user_slug, form_type_or_id)

```ruby
begin
  # Get form details
  data, status_code, headers = api_instance.get_user_form_details_with_http_info(site_slug, user_slug, form_type_or_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormDetailsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->get_user_form_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **form_type_or_id** | **String** | The type of form to retrieve, or the form&#39;s unique identifier (TypeId) assigned by the client/PMS |  |

### Return type

[**FormDetailsResponse**](FormDetailsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_form_groups_for_user

> <FormGroupDetailsListResponse> list_form_groups_for_user(site_slug, user_slug, opts)

List form groups for a user

Lists all form groups for a user

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
opts = {
  page_size: 50, # Integer | The number of items to retrieve in this request
  next_page_token: 'next_page_token_example' # String | A token retrieved from a previous request, used to retrieve the next page of results
}

begin
  # List form groups for a user
  result = api_instance.list_form_groups_for_user(site_slug, user_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_form_groups_for_user: #{e}"
end
```

#### Using the list_form_groups_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormGroupDetailsListResponse>, Integer, Hash)> list_form_groups_for_user_with_http_info(site_slug, user_slug, opts)

```ruby
begin
  # List form groups for a user
  data, status_code, headers = api_instance.list_form_groups_for_user_with_http_info(site_slug, user_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormGroupDetailsListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_form_groups_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **page_size** | **Integer** | The number of items to retrieve in this request | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |

### Return type

[**FormGroupDetailsListResponse**](FormGroupDetailsListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_form_users

> <FormUserDetailsListResponse> list_form_users(site_slug, opts)

List Form Users

List all form users for a site

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
opts = {
  page_size: 50, # Integer | The number of items to retrieve in this request
  next_page_token: 'next_page_token_example', # String | A token retrieved from a previous request, used to retrieve the next page of results
  include_form_groups: false # Boolean | If true, the response will include the form groups of the user
}

begin
  # List Form Users
  result = api_instance.list_form_users(site_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_form_users: #{e}"
end
```

#### Using the list_form_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormUserDetailsListResponse>, Integer, Hash)> list_form_users_with_http_info(site_slug, opts)

```ruby
begin
  # List Form Users
  data, status_code, headers = api_instance.list_form_users_with_http_info(site_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormUserDetailsListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_form_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **page_size** | **Integer** | The number of items to retrieve in this request | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |
| **include_form_groups** | **Boolean** | If true, the response will include the form groups of the user | [optional] |

### Return type

[**FormUserDetailsListResponse**](FormUserDetailsListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_forms_in_group

> <FormDetailsListResponse> list_forms_in_group(site_slug, user_slug, group_slug, opts)

List forms for a form group

Lists all forms for a form group

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
group_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group
opts = {
  include_user_responses: false # Boolean | If true, the response will include the responses of the user
}

begin
  # List forms for a form group
  result = api_instance.list_forms_in_group(site_slug, user_slug, group_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_forms_in_group: #{e}"
end
```

#### Using the list_forms_in_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormDetailsListResponse>, Integer, Hash)> list_forms_in_group_with_http_info(site_slug, user_slug, group_slug, opts)

```ruby
begin
  # List forms for a form group
  data, status_code, headers = api_instance.list_forms_in_group_with_http_info(site_slug, user_slug, group_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormDetailsListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->list_forms_in_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **group_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a form group |  |
| **include_user_responses** | **Boolean** | If true, the response will include the responses of the user | [optional] |

### Return type

[**FormDetailsListResponse**](FormDetailsListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_form_user

> update_form_user(site_slug, user_slug, update_form_user_request)

Update a form user

Update a form user's patient details

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::FormsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
user_slug = '_8n6EzC' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user
update_form_user_request = SlipstreamClient::UpdateFormUserRequest.new({display_name: 'John Smith', last_name: 'Smith'}) # UpdateFormUserRequest | 

begin
  # Update a form user
  api_instance.update_form_user(site_slug, user_slug, update_form_user_request)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->update_form_user: #{e}"
end
```

#### Using the update_form_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_form_user_with_http_info(site_slug, user_slug, update_form_user_request)

```ruby
begin
  # Update a form user
  data, status_code, headers = api_instance.update_form_user_with_http_info(site_slug, user_slug, update_form_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsApi->update_form_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **user_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a user |  |
| **update_form_user_request** | [**UpdateFormUserRequest**](UpdateFormUserRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

