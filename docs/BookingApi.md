# SlipstreamClient::BookingApi

All URIs are relative to *https://slipstream.uk.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_online_booking_site**](BookingApi.md#delete_online_booking_site) | **DELETE** /sites/{SiteSlug}/booking | Delete online booking information for the site |
| [**get_online_booking_site_details**](BookingApi.md#get_online_booking_site_details) | **GET** /sites/{SiteSlug}/booking | Get online booking site details |
| [**get_online_booking_site_payments_fee**](BookingApi.md#get_online_booking_site_payments_fee) | **GET** /sites/{SiteSlug}/booking/payments_fee | Get online booking site details |
| [**list_online_booking_sites**](BookingApi.md#list_online_booking_sites) | **GET** /sites/booking | List Online Booking site details |
| [**online_booking_site_populate_scheduler**](BookingApi.md#online_booking_site_populate_scheduler) | **POST** /sites/{SiteSlug}/booking/populate_scheduler | Re-populate online booking details for a site (Jarvis) |
| [**patch_online_booking_site_details**](BookingApi.md#patch_online_booking_site_details) | **PATCH** /sites/{SiteSlug}/booking | Update existing online booking site details |
| [**update_online_booking_site_payments_fee**](BookingApi.md#update_online_booking_site_payments_fee) | **POST** /sites/{SiteSlug}/booking/payments_fee | Update online booking payments fee for a site |
| [**upload_availability**](BookingApi.md#upload_availability) | **POST** /sites/{SiteSlug}/availability | Upload availability |
| [**upload_booking_rules**](BookingApi.md#upload_booking_rules) | **POST** /sites/{SiteSlug}/booking/rules | Upload booking rules |
| [**upload_practitioners**](BookingApi.md#upload_practitioners) | **POST** /sites/{SiteSlug}/practitioners | Upload practitioners |
| [**upsert_online_booking_site_details**](BookingApi.md#upsert_online_booking_site_details) | **POST** /sites/{SiteSlug}/booking | Update online booking site details, create site if not exists |


## delete_online_booking_site

> delete_online_booking_site(site_slug)

Delete online booking information for the site

 **Warning**: This operation will delete all online booking details for the site (booking rules, availability data etc).  Online booking should be made inactive before this operation is performed. 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Delete online booking information for the site
  api_instance.delete_online_booking_site(site_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->delete_online_booking_site: #{e}"
end
```

#### Using the delete_online_booking_site_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_online_booking_site_with_http_info(site_slug)

```ruby
begin
  # Delete online booking information for the site
  data, status_code, headers = api_instance.delete_online_booking_site_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->delete_online_booking_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_online_booking_site_details

> <OnlineBookingSiteDetails> get_online_booking_site_details(site_slug)

Get online booking site details

Retrieves online booking details for particular site 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Get online booking site details
  result = api_instance.get_online_booking_site_details(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->get_online_booking_site_details: #{e}"
end
```

#### Using the get_online_booking_site_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnlineBookingSiteDetails>, Integer, Hash)> get_online_booking_site_details_with_http_info(site_slug)

```ruby
begin
  # Get online booking site details
  data, status_code, headers = api_instance.get_online_booking_site_details_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnlineBookingSiteDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->get_online_booking_site_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**OnlineBookingSiteDetails**](OnlineBookingSiteDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_online_booking_site_payments_fee

> <OnlineBookingSitePaymentsFee> get_online_booking_site_payments_fee(site_slug)

Get online booking site details

Retrieve online booking payments fee details for a particular site 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Get online booking site details
  result = api_instance.get_online_booking_site_payments_fee(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->get_online_booking_site_payments_fee: #{e}"
end
```

#### Using the get_online_booking_site_payments_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnlineBookingSitePaymentsFee>, Integer, Hash)> get_online_booking_site_payments_fee_with_http_info(site_slug)

```ruby
begin
  # Get online booking site details
  data, status_code, headers = api_instance.get_online_booking_site_payments_fee_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnlineBookingSitePaymentsFee>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->get_online_booking_site_payments_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**OnlineBookingSitePaymentsFee**](OnlineBookingSitePaymentsFee.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_online_booking_sites

> <ListOnlineBookingSitesResponse> list_online_booking_sites(opts)

List Online Booking site details

Lists Online Booking site in the slipstream Online Booking service

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::BookingApi.new
opts = {
  page_size: 50, # Integer | The page number to retrieve
  next_page_token: 'next_page_token_example', # String | A token retrieved from a previous request, used to retrieve the next page of results
  client_identifier: 'client_identifier_example', # String | The client identifier to search
  client_unique_id: 'client_unique_id_example', # String | The client unique id to search
  client_subscription_id: 'client_subscription_id_example', # String | The subscription id to search
  name: 'name_example', # String | The client identifier to search
  is_active: false, # Boolean | Filter active or inactive sites.
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # List Online Booking site details
  result = api_instance.list_online_booking_sites(opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->list_online_booking_sites: #{e}"
end
```

#### Using the list_online_booking_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOnlineBookingSitesResponse>, Integer, Hash)> list_online_booking_sites_with_http_info(opts)

```ruby
begin
  # List Online Booking site details
  data, status_code, headers = api_instance.list_online_booking_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOnlineBookingSitesResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->list_online_booking_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The page number to retrieve | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |
| **client_identifier** | **String** | The client identifier to search | [optional] |
| **client_unique_id** | **String** | The client unique id to search | [optional] |
| **client_subscription_id** | **String** | The subscription id to search | [optional] |
| **name** | **String** | The client identifier to search | [optional] |
| **is_active** | **Boolean** | Filter active or inactive sites. | [optional] |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**ListOnlineBookingSitesResponse**](ListOnlineBookingSitesResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## online_booking_site_populate_scheduler

> online_booking_site_populate_scheduler(site_slug)

Re-populate online booking details for a site (Jarvis)

Re-populate online booking details in Jarvis. 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Re-populate online booking details for a site (Jarvis)
  api_instance.online_booking_site_populate_scheduler(site_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->online_booking_site_populate_scheduler: #{e}"
end
```

#### Using the online_booking_site_populate_scheduler_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> online_booking_site_populate_scheduler_with_http_info(site_slug)

```ruby
begin
  # Re-populate online booking details for a site (Jarvis)
  data, status_code, headers = api_instance.online_booking_site_populate_scheduler_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->online_booking_site_populate_scheduler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## patch_online_booking_site_details

> <OnlineBookingSiteDetails> patch_online_booking_site_details(site_slug, update_online_booking_site_details_request)

Update existing online booking site details

Update online booking details for a site.  

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
update_online_booking_site_details_request = SlipstreamClient::UpdateOnlineBookingSiteDetailsRequest.new # UpdateOnlineBookingSiteDetailsRequest | 

begin
  # Update existing online booking site details
  result = api_instance.patch_online_booking_site_details(site_slug, update_online_booking_site_details_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->patch_online_booking_site_details: #{e}"
end
```

#### Using the patch_online_booking_site_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnlineBookingSiteDetails>, Integer, Hash)> patch_online_booking_site_details_with_http_info(site_slug, update_online_booking_site_details_request)

```ruby
begin
  # Update existing online booking site details
  data, status_code, headers = api_instance.patch_online_booking_site_details_with_http_info(site_slug, update_online_booking_site_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnlineBookingSiteDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->patch_online_booking_site_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **update_online_booking_site_details_request** | [**UpdateOnlineBookingSiteDetailsRequest**](UpdateOnlineBookingSiteDetailsRequest.md) |  |  |

### Return type

[**OnlineBookingSiteDetails**](OnlineBookingSiteDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## update_online_booking_site_payments_fee

> <OnlineBookingSitePaymentsFee> update_online_booking_site_payments_fee(site_slug, online_booking_site_payments_fee)

Update online booking payments fee for a site

Update online booking payments fee for a site.  

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
online_booking_site_payments_fee = SlipstreamClient::OnlineBookingSitePaymentsFee.new # OnlineBookingSitePaymentsFee | 

begin
  # Update online booking payments fee for a site
  result = api_instance.update_online_booking_site_payments_fee(site_slug, online_booking_site_payments_fee)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->update_online_booking_site_payments_fee: #{e}"
end
```

#### Using the update_online_booking_site_payments_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnlineBookingSitePaymentsFee>, Integer, Hash)> update_online_booking_site_payments_fee_with_http_info(site_slug, online_booking_site_payments_fee)

```ruby
begin
  # Update online booking payments fee for a site
  data, status_code, headers = api_instance.update_online_booking_site_payments_fee_with_http_info(site_slug, online_booking_site_payments_fee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnlineBookingSitePaymentsFee>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->update_online_booking_site_payments_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **online_booking_site_payments_fee** | [**OnlineBookingSitePaymentsFee**](OnlineBookingSitePaymentsFee.md) |  |  |

### Return type

[**OnlineBookingSitePaymentsFee**](OnlineBookingSitePaymentsFee.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## upload_availability

> upload_availability(site_slug, upload_availability_request)

Upload availability

Uploads availability slots for practitioners at a practice site. This operation will replace all existing availability for the specified practitioner/reason/scenario combinations.  Accepts both ExactIdentifiers (GUID format) and ExternalIds for practitioner and reason identifiers.  Time slots should be provided in HH:MM format (24-hour). 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
upload_availability_request = SlipstreamClient::UploadAvailabilityRequest.new({availability: [SlipstreamClient::AvailabilityUpload.new({practitioner_identifier: 'DR-123', reason_identifier: '0-14-418', booking_scenario: SlipstreamClient::BookingScenario::NEW_PATIENT, availability_dates: [SlipstreamClient::AvailabilityForDate.new({date: Date.parse('Fri Mar 15 00:00:00 GMT 2024'), time_slots: [SlipstreamClient::TimeSlot.new({start_time: '09:00', end_time: '09:30'})]})]})]}) # UploadAvailabilityRequest | 

begin
  # Upload availability
  api_instance.upload_availability(site_slug, upload_availability_request)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_availability: #{e}"
end
```

#### Using the upload_availability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upload_availability_with_http_info(site_slug, upload_availability_request)

```ruby
begin
  # Upload availability
  data, status_code, headers = api_instance.upload_availability_with_http_info(site_slug, upload_availability_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **upload_availability_request** | [**UploadAvailabilityRequest**](UploadAvailabilityRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json


## upload_booking_rules

> <BookingRulesUploadResponse> upload_booking_rules(site_slug, upload_booking_rules_request)

Upload booking rules

Uploads booking rules for a practice site. This will replace ALL existing booking rules for the site.  **Warning**: This operation will deactivate all existing rules including those generated from PMS sync.  Accepts both ExactIdentifiers (GUID format) and ExternalIds for practitioner and reason identifiers. 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
upload_booking_rules_request = SlipstreamClient::UploadBookingRulesRequest.new({rules: [SlipstreamClient::BookingPermutationUpload.new({booking_scenario: SlipstreamClient::BookingScenario::NEW_PATIENT, practitioner_identifier: 'DR-123', reason_identifier: '0-14-418', duration: 'PT30M'})]}) # UploadBookingRulesRequest | 

begin
  # Upload booking rules
  result = api_instance.upload_booking_rules(site_slug, upload_booking_rules_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_booking_rules: #{e}"
end
```

#### Using the upload_booking_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookingRulesUploadResponse>, Integer, Hash)> upload_booking_rules_with_http_info(site_slug, upload_booking_rules_request)

```ruby
begin
  # Upload booking rules
  data, status_code, headers = api_instance.upload_booking_rules_with_http_info(site_slug, upload_booking_rules_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookingRulesUploadResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_booking_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **upload_booking_rules_request** | [**UploadBookingRulesRequest**](UploadBookingRulesRequest.md) |  |  |

### Return type

[**BookingRulesUploadResponse**](BookingRulesUploadResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## upload_practitioners

> <PractitionersUploadResponse> upload_practitioners(site_slug, upload_practitioners_request)

Upload practitioners

Uploads practitioner information for a practice site. This operation will update existing practitioners and create new ones based on the external_id provided.  Each practitioner is identified by their external_id from the PMS system. 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
upload_practitioners_request = SlipstreamClient::UploadPractitionersRequest.new({practitioners: [SlipstreamClient::PractitionerUpload.new({external_id: 'DR-123', name: 'Dr. Jane Smith', provider_type: SlipstreamClient::ProviderType::OTHER})]}) # UploadPractitionersRequest | 

begin
  # Upload practitioners
  result = api_instance.upload_practitioners(site_slug, upload_practitioners_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_practitioners: #{e}"
end
```

#### Using the upload_practitioners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PractitionersUploadResponse>, Integer, Hash)> upload_practitioners_with_http_info(site_slug, upload_practitioners_request)

```ruby
begin
  # Upload practitioners
  data, status_code, headers = api_instance.upload_practitioners_with_http_info(site_slug, upload_practitioners_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PractitionersUploadResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upload_practitioners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **upload_practitioners_request** | [**UploadPractitionersRequest**](UploadPractitionersRequest.md) |  |  |

### Return type

[**PractitionersUploadResponse**](PractitionersUploadResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## upsert_online_booking_site_details

> <OnlineBookingSiteDetails> upsert_online_booking_site_details(site_slug, update_online_booking_site_details_request)

Update online booking site details, create site if not exists

Update online booking details for a site. If the site does not exist, it will be created. 

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

api_instance = SlipstreamClient::BookingApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
update_online_booking_site_details_request = SlipstreamClient::UpdateOnlineBookingSiteDetailsRequest.new # UpdateOnlineBookingSiteDetailsRequest | 

begin
  # Update online booking site details, create site if not exists
  result = api_instance.upsert_online_booking_site_details(site_slug, update_online_booking_site_details_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upsert_online_booking_site_details: #{e}"
end
```

#### Using the upsert_online_booking_site_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnlineBookingSiteDetails>, Integer, Hash)> upsert_online_booking_site_details_with_http_info(site_slug, update_online_booking_site_details_request)

```ruby
begin
  # Update online booking site details, create site if not exists
  data, status_code, headers = api_instance.upsert_online_booking_site_details_with_http_info(site_slug, update_online_booking_site_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnlineBookingSiteDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BookingApi->upsert_online_booking_site_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **update_online_booking_site_details_request** | [**UpdateOnlineBookingSiteDetailsRequest**](UpdateOnlineBookingSiteDetailsRequest.md) |  |  |

### Return type

[**OnlineBookingSiteDetails**](OnlineBookingSiteDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

