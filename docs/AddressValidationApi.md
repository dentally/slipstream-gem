# SlipstreamClient::AddressValidationApi

All URIs are relative to *https://slipstream.au.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**address_fetch_batch**](AddressValidationApi.md#address_fetch_batch) | **GET** /sites/{SiteSlug}/address/batch | Get the results of a batch address validation request |
| [**address_validate**](AddressValidationApi.md#address_validate) | **POST** /sites/{SiteSlug}/address/validate | Validate an address |
| [**address_validate_batch**](AddressValidationApi.md#address_validate_batch) | **POST** /sites/{SiteSlug}/address/batch | Validate a batch of addresses |


## address_fetch_batch

> <BatchAddressValidationComplete> address_fetch_batch(site_slug, id)

Get the results of a batch address validation request

Gets the completed batch result from the external provider.

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

api_instance = SlipstreamClient::AddressValidationApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
id = '24563C3BA517414405E35D4D97199C26' # String | The batch Id of the address validation batch to retrieve

begin
  # Get the results of a batch address validation request
  result = api_instance.address_fetch_batch(site_slug, id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_fetch_batch: #{e}"
end
```

#### Using the address_fetch_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchAddressValidationComplete>, Integer, Hash)> address_fetch_batch_with_http_info(site_slug, id)

```ruby
begin
  # Get the results of a batch address validation request
  data, status_code, headers = api_instance.address_fetch_batch_with_http_info(site_slug, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchAddressValidationComplete>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_fetch_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **id** | **String** | The batch Id of the address validation batch to retrieve |  |

### Return type

[**BatchAddressValidationComplete**](BatchAddressValidationComplete.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## address_validate

> <ValidatedAddress> address_validate(site_slug, validate_address_request)

Validate an address

Validates an address with an external provider.  The address validation is performed using a location bias towards the site's location. The result may or may not be corrected by the external provider.

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

api_instance = SlipstreamClient::AddressValidationApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
validate_address_request = SlipstreamClient::ValidateAddressRequest.new # ValidateAddressRequest | The address validation request

begin
  # Validate an address
  result = api_instance.address_validate(site_slug, validate_address_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_validate: #{e}"
end
```

#### Using the address_validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatedAddress>, Integer, Hash)> address_validate_with_http_info(site_slug, validate_address_request)

```ruby
begin
  # Validate an address
  data, status_code, headers = api_instance.address_validate_with_http_info(site_slug, validate_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatedAddress>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_validate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **validate_address_request** | [**ValidateAddressRequest**](ValidateAddressRequest.md) | The address validation request |  |

### Return type

[**ValidatedAddress**](ValidatedAddress.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## address_validate_batch

> address_validate_batch(site_slug, validate_address_request)

Validate a batch of addresses

Validate one or more addresses in a single call. The batch process is asynchronous, requiring the caller to fetch the batch results in a subsequent fetch call with the batch ID.

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

api_instance = SlipstreamClient::AddressValidationApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
validate_address_request = [SlipstreamClient::ValidateAddressRequest.new] # Array<ValidateAddressRequest> | The batch of one or more addresses to validate

begin
  # Validate a batch of addresses
  api_instance.address_validate_batch(site_slug, validate_address_request)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_validate_batch: #{e}"
end
```

#### Using the address_validate_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> address_validate_batch_with_http_info(site_slug, validate_address_request)

```ruby
begin
  # Validate a batch of addresses
  data, status_code, headers = api_instance.address_validate_batch_with_http_info(site_slug, validate_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling AddressValidationApi->address_validate_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **validate_address_request** | [**Array&lt;ValidateAddressRequest&gt;**](ValidateAddressRequest.md) | The batch of one or more addresses to validate |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

