# SlipstreamClient::OrganisationsApi

All URIs are relative to *https://dev.slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_organisation**](OrganisationsApi.md#delete_organisation) | **DELETE** /management/organisations/{OrganisationIdentifier} | Delete an organisation |
| [**get_billing_item**](OrganisationsApi.md#get_billing_item) | **GET** /management/organisations/{OrganisationSlug}/billing/{ItemId} | Get a specific billing item&#39;s details |
| [**get_billing_summary**](OrganisationsApi.md#get_billing_summary) | **GET** /management/organisations/{OrganisationSlug}/billing/summary | Get a summary of billing for an organisation |
| [**get_organisation**](OrganisationsApi.md#get_organisation) | **GET** /management/organisations/{OrganisationIdentifier} | Get an organisation |
| [**get_organisation_identity**](OrganisationsApi.md#get_organisation_identity) | **GET** /management/organisations/{OrganisationIdentifier}/identity | Get organisation identity |
| [**list_billing_items**](OrganisationsApi.md#list_billing_items) | **GET** /management/organisations/{OrganisationSlug}/billing | Get a list of billing item&#39;s for an organisation |
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


## get_billing_item

> <BillingItemDetails> get_billing_item(organisation_slug, item_id)

Get a specific billing item's details

Gets a specific billing item's details

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
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_slug = 'organisation_slug_example' # String | The organisation slug to retrieve billing records for
item_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier of the billing item

begin
  # Get a specific billing item's details
  result = api_instance.get_billing_item(organisation_slug, item_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_billing_item: #{e}"
end
```

#### Using the get_billing_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingItemDetails>, Integer, Hash)> get_billing_item_with_http_info(organisation_slug, item_id)

```ruby
begin
  # Get a specific billing item's details
  data, status_code, headers = api_instance.get_billing_item_with_http_info(organisation_slug, item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingItemDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_billing_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_slug** | **String** | The organisation slug to retrieve billing records for |  |
| **item_id** | **String** | The unique identifier of the billing item |  |

### Return type

[**BillingItemDetails**](BillingItemDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_billing_summary

> <BillingSummaryDetails> get_billing_summary(organisation_slug, opts)

Get a summary of billing for an organisation

Gets a summary of billing for an organisation

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
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_slug = 'organisation_slug_example' # String | The organisation slug to retrieve the billing summary for
opts = {
  date_from: Time.parse('2024-10-24T14:30:15+02:00'), # Time | The start of the date range of the billing summary (inclusive)
  date_to: Time.parse('2024-10-24T14:30:15+02:00') # Time | The end of the date range of the billing summary (inclusive)
}

begin
  # Get a summary of billing for an organisation
  result = api_instance.get_billing_summary(organisation_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_billing_summary: #{e}"
end
```

#### Using the get_billing_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingSummaryDetails>, Integer, Hash)> get_billing_summary_with_http_info(organisation_slug, opts)

```ruby
begin
  # Get a summary of billing for an organisation
  data, status_code, headers = api_instance.get_billing_summary_with_http_info(organisation_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingSummaryDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->get_billing_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_slug** | **String** | The organisation slug to retrieve the billing summary for |  |
| **date_from** | **Time** | The start of the date range of the billing summary (inclusive) | [optional] |
| **date_to** | **Time** | The end of the date range of the billing summary (inclusive) | [optional] |

### Return type

[**BillingSummaryDetails**](BillingSummaryDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

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


## list_billing_items

> <BillingItemDetailsListResponse> list_billing_items(organisation_slug, opts)

Get a list of billing item's for an organisation

Gets a list of billing item details for the organisation

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
end

api_instance = SlipstreamClient::OrganisationsApi.new
organisation_slug = 'organisation_slug_example' # String | The organisation slug to retrieve billing records for
opts = {
  date_from: Time.parse('2024-10-24T14:30:15+02:00'), # Time | The date to retrieve letters from
  date_to: Time.parse('2024-10-24T14:30:15+02:00'), # Time | The date to retrieve letters to
  page_size: 50, # Integer | The page number to retrieve
  next_page_token: 'next_page_token_example' # String | A token retrieved from a previous request, used to retrieve the next page of results
}

begin
  # Get a list of billing item's for an organisation
  result = api_instance.list_billing_items(organisation_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->list_billing_items: #{e}"
end
```

#### Using the list_billing_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingItemDetailsListResponse>, Integer, Hash)> list_billing_items_with_http_info(organisation_slug, opts)

```ruby
begin
  # Get a list of billing item's for an organisation
  data, status_code, headers = api_instance.list_billing_items_with_http_info(organisation_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingItemDetailsListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling OrganisationsApi->list_billing_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organisation_slug** | **String** | The organisation slug to retrieve billing records for |  |
| **date_from** | **Time** | The date to retrieve letters from | [optional] |
| **date_to** | **Time** | The date to retrieve letters to | [optional] |
| **page_size** | **Integer** | The page number to retrieve | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |

### Return type

[**BillingItemDetailsListResponse**](BillingItemDetailsListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

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

