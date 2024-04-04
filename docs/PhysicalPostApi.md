# OpenapiClient::PhysicalPostApi

All URIs are relative to *https://dev.slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_letters**](PhysicalPostApi.md#create_letters) | **POST** /sites/{SiteSlug}/physicalpost/letter | Send letters |
| [**get_letter**](PhysicalPostApi.md#get_letter) | **GET** /sites/{SiteSlug}/physicalpost/letter/{LetterId} | Get the letter details of a specific letter |
| [**list_letters**](PhysicalPostApi.md#list_letters) | **GET** /sites/{SiteSlug}/physicalpost/letter | Get a paginated list of all letter details owned by a site |


## create_letters

> <CreateLetters202Response> create_letters(site_slug, send_letter_request)

Send letters

Queues one or more letters for sending on behalf of the practice

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PhysicalPostApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
send_letter_request = [OpenapiClient::SendLetterRequest.new({pms_specific_id: '{064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e}', addressee: OpenapiClient::Addressee.new({pms_specific_id: '1234567890abcdef1234567890abcdef', full_name: 'Dr John Smith III'}), address: OpenapiClient::StreetAddress.new({address_line1: '123 Main St', country: 'USA'}), pdf: OpenapiClient::DataUri.new({id: '12345678-1234-1234-1234-1234567890ab', data_uri: 'https://staticinternalfilessa.blob.core.windows.net/images/Slipstream_tree.pdf?sp=r&st=2024-01-31T22:40:26Z&se=2026-01-02T06:40:26Z&spr=https&sv=2022-11-02&sr=b&sig=lbt2HQSdD%2BFG6x5hJK%2Brk2yZhMcZLqhiUm0tsu8xZ7E%3D'})})] # Array<SendLetterRequest> | The details of the letter to send

begin
  # Send letters
  result = api_instance.create_letters(site_slug, send_letter_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->create_letters: #{e}"
end
```

#### Using the create_letters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLetters202Response>, Integer, Hash)> create_letters_with_http_info(site_slug, send_letter_request)

```ruby
begin
  # Send letters
  data, status_code, headers = api_instance.create_letters_with_http_info(site_slug, send_letter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLetters202Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->create_letters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **send_letter_request** | [**Array&lt;SendLetterRequest&gt;**](SendLetterRequest.md) | The details of the letter to send |  |

### Return type

[**CreateLetters202Response**](CreateLetters202Response.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_letter

> <LetterDetails> get_letter(site_slug, letter_id, opts)

Get the letter details of a specific letter

Get the details of a letter

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PhysicalPostApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
letter_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier (GUID) of the letter in slipstream
opts = {
  include_history: false # Boolean | If true, the response will include the history of the letter
}

begin
  # Get the letter details of a specific letter
  result = api_instance.get_letter(site_slug, letter_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->get_letter: #{e}"
end
```

#### Using the get_letter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LetterDetails>, Integer, Hash)> get_letter_with_http_info(site_slug, letter_id, opts)

```ruby
begin
  # Get the letter details of a specific letter
  data, status_code, headers = api_instance.get_letter_with_http_info(site_slug, letter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LetterDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->get_letter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **letter_id** | **String** | The unique identifier (GUID) of the letter in slipstream |  |
| **include_history** | **Boolean** | If true, the response will include the history of the letter | [optional] |

### Return type

[**LetterDetails**](LetterDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_letters

> <LetterDetailsListResponse> list_letters(site_slug, opts)

Get a paginated list of all letter details owned by a site

Gets a list of letters

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PhysicalPostApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
opts = {
  page_size: 50, # Integer | The page number to retrieve
  next_page_token: 'next_page_token_example', # String | A token retrieved from a previous request, used to retrieve the next page of results
  status: OpenapiClient::LetterStatus::UNKNOWN, # LetterStatus | The status of the letters to retrieve - if not provided, all statuses will be returned
  date_from: Date.parse('2013-10-20'), # Date | The date to retrieve letters from - if not provided, all letters will be returned
  include_history: false # Boolean | If true, the response will include the history of the letter
}

begin
  # Get a paginated list of all letter details owned by a site
  result = api_instance.list_letters(site_slug, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->list_letters: #{e}"
end
```

#### Using the list_letters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LetterDetailsListResponse>, Integer, Hash)> list_letters_with_http_info(site_slug, opts)

```ruby
begin
  # Get a paginated list of all letter details owned by a site
  data, status_code, headers = api_instance.list_letters_with_http_info(site_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LetterDetailsListResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhysicalPostApi->list_letters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **page_size** | **Integer** | The page number to retrieve | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |
| **status** | [**LetterStatus**](.md) | The status of the letters to retrieve - if not provided, all statuses will be returned | [optional] |
| **date_from** | **Date** | The date to retrieve letters from - if not provided, all letters will be returned | [optional] |
| **include_history** | **Boolean** | If true, the response will include the history of the letter | [optional] |

### Return type

[**LetterDetailsListResponse**](LetterDetailsListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

