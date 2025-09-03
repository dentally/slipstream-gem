# SlipstreamClient::BillingApi

All URIs are relative to *https://slipstream.hsone.dev/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_billing_item**](BillingApi.md#get_billing_item) | **GET** /management/organisations/{OrganisationSlug}/billing/{ItemId} | Get a specific billing item&#39;s details |
| [**get_billing_summary**](BillingApi.md#get_billing_summary) | **GET** /management/organisations/{OrganisationSlug}/billing/summary | Get a summary of billing for an organisation |
| [**list_billing_items**](BillingApi.md#list_billing_items) | **GET** /management/organisations/{OrganisationSlug}/billing | Get a list of billing item&#39;s for an organisation |


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
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::BillingApi.new
organisation_slug = 'organisation_slug_example' # String | The organisation slug to retrieve billing records for
item_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier of the billing item

begin
  # Get a specific billing item's details
  result = api_instance.get_billing_item(organisation_slug, item_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling BillingApi->get_billing_item: #{e}"
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
  puts "Error when calling BillingApi->get_billing_item_with_http_info: #{e}"
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

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

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
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::BillingApi.new
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
  puts "Error when calling BillingApi->get_billing_summary: #{e}"
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
  puts "Error when calling BillingApi->get_billing_summary_with_http_info: #{e}"
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

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

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
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::BillingApi.new
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
  puts "Error when calling BillingApi->list_billing_items: #{e}"
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
  puts "Error when calling BillingApi->list_billing_items_with_http_info: #{e}"
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

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

