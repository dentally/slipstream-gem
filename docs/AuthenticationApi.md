# OpenapiClient::AuthenticationApi

All URIs are relative to *https://dev.slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_access_token**](AuthenticationApi.md#get_access_token) | **POST** /oauth2/token | Get an access token |
| [**inspect_access_token**](AuthenticationApi.md#inspect_access_token) | **GET** /oauth2/introspect | Gets the details of the current access token. |


## get_access_token

> <AccessToken> get_access_token(grant_type, client_id, client_secret)

Get an access token

This endpoint is used to obtain an access token by using client credentials or user credentials.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new
grant_type = 'client_credentials' # String | Grant type value - currently only client_credentials is explicitly supported.
client_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The client's identifier.
client_secret = 'client_secret_example' # String | The client's secret.

begin
  # Get an access token
  result = api_instance.get_access_token(grant_type, client_id, client_secret)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->get_access_token: #{e}"
end
```

#### Using the get_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessToken>, Integer, Hash)> get_access_token_with_http_info(grant_type, client_id, client_secret)

```ruby
begin
  # Get an access token
  data, status_code, headers = api_instance.get_access_token_with_http_info(grant_type, client_id, client_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessToken>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->get_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type value - currently only client_credentials is explicitly supported. |  |
| **client_id** | **String** | The client&#39;s identifier. |  |
| **client_secret** | **String** | The client&#39;s secret. |  |

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## inspect_access_token

> <AccessTokenDetails> inspect_access_token

Gets the details of the current access token.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::AuthenticationApi.new

begin
  # Gets the details of the current access token.
  result = api_instance.inspect_access_token
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->inspect_access_token: #{e}"
end
```

#### Using the inspect_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessTokenDetails>, Integer, Hash)> inspect_access_token_with_http_info

```ruby
begin
  # Gets the details of the current access token.
  data, status_code, headers = api_instance.inspect_access_token_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessTokenDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->inspect_access_token_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccessTokenDetails**](AccessTokenDetails.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

