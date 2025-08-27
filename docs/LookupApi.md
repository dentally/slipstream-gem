# SlipstreamClient::LookupApi

All URIs are relative to *https://slipstream.au.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**lookup_slug**](LookupApi.md#lookup_slug) | **GET** /lookup/slug/{Slug} | Lookup Slug |


## lookup_slug

> <PracticeEntity> lookup_slug(slug)

Lookup Slug

Fetches the pms specific id of a given organisation or practice in slipstream

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

api_instance = SlipstreamClient::LookupApi.new
slug = 'slug_example' # String | The slug of a practice site or organisation

begin
  # Lookup Slug
  result = api_instance.lookup_slug(slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LookupApi->lookup_slug: #{e}"
end
```

#### Using the lookup_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeEntity>, Integer, Hash)> lookup_slug_with_http_info(slug)

```ruby
begin
  # Lookup Slug
  data, status_code, headers = api_instance.lookup_slug_with_http_info(slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeEntity>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LookupApi->lookup_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | The slug of a practice site or organisation |  |

### Return type

[**PracticeEntity**](PracticeEntity.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

