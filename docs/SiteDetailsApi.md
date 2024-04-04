# SlipstreamClient::SiteDetailsApi

All URIs are relative to *https://dev.slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_practice_site_capability**](SiteDetailsApi.md#add_practice_site_capability) | **PATCH** /sites/{SiteSlug}/capabilities/{capability} | Add capability |
| [**get_practice_site_details**](SiteDetailsApi.md#get_practice_site_details) | **GET** /sites/{SiteSlug} | Get practice site details |
| [**list_practice_site_capabilities**](SiteDetailsApi.md#list_practice_site_capabilities) | **GET** /sites/{SiteSlug}/capabilities | List capabilities |
| [**practice_site_has_capability**](SiteDetailsApi.md#practice_site_has_capability) | **GET** /sites/{SiteSlug}/capabilities/{capability} | Check capability |
| [**remove_practice_site_capability**](SiteDetailsApi.md#remove_practice_site_capability) | **DELETE** /sites/{SiteSlug}/capabilities/{capability} | Remove capability |
| [**update_practice_site**](SiteDetailsApi.md#update_practice_site) | **PATCH** /sites/{SiteSlug} | Update practice site details |
| [**update_practice_site_capabilities**](SiteDetailsApi.md#update_practice_site_capabilities) | **PUT** /sites/{SiteSlug}/capabilities | Replace capabilities |


## add_practice_site_capability

> add_practice_site_capability(site_slug, capability)

Add capability

Adds a single capability to the list of functionality that the practice site supports. See [Capabilities](#section/Getting-started/Capabilities) for more details.

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
capability = SlipstreamClient::Capability::BILLING # Capability | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details.

begin
  # Add capability
  api_instance.add_practice_site_capability(site_slug, capability)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->add_practice_site_capability: #{e}"
end
```

#### Using the add_practice_site_capability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_practice_site_capability_with_http_info(site_slug, capability)

```ruby
begin
  # Add capability
  data, status_code, headers = api_instance.add_practice_site_capability_with_http_info(site_slug, capability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->add_practice_site_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **capability** | [**Capability**](.md) | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_practice_site_details

> <PracticeSiteDetails> get_practice_site_details(site_slug)

Get practice site details

Fetches the full details of a practice site in the slipstream practice registry

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Get practice site details
  result = api_instance.get_practice_site_details(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->get_practice_site_details: #{e}"
end
```

#### Using the get_practice_site_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteDetails>, Integer, Hash)> get_practice_site_details_with_http_info(site_slug)

```ruby
begin
  # Get practice site details
  data, status_code, headers = api_instance.get_practice_site_details_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->get_practice_site_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**PracticeSiteDetails**](PracticeSiteDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_practice_site_capabilities

> <Array<Capability>> list_practice_site_capabilities(site_slug)

List capabilities

Fetches the list of functionality that a practice site (and the software it is using) supports. See [Capabilities](#section/Getting-started/Capabilities) for more details.

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # List capabilities
  result = api_instance.list_practice_site_capabilities(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->list_practice_site_capabilities: #{e}"
end
```

#### Using the list_practice_site_capabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Capability>>, Integer, Hash)> list_practice_site_capabilities_with_http_info(site_slug)

```ruby
begin
  # List capabilities
  data, status_code, headers = api_instance.list_practice_site_capabilities_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Capability>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->list_practice_site_capabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**Array&lt;Capability&gt;**](Capability.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## practice_site_has_capability

> Boolean practice_site_has_capability(site_slug, capability)

Check capability

Checks if the practice supports a capability. See [Capabilities](#section/Getting-started/Capabilities) for more details.

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
capability = SlipstreamClient::Capability::BILLING # Capability | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details.

begin
  # Check capability
  result = api_instance.practice_site_has_capability(site_slug, capability)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->practice_site_has_capability: #{e}"
end
```

#### Using the practice_site_has_capability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> practice_site_has_capability_with_http_info(site_slug, capability)

```ruby
begin
  # Check capability
  data, status_code, headers = api_instance.practice_site_has_capability_with_http_info(site_slug, capability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->practice_site_has_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **capability** | [**Capability**](.md) | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details. |  |

### Return type

**Boolean**

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## remove_practice_site_capability

> remove_practice_site_capability(site_slug, capability)

Remove capability

Removes a capability from a practice. See [Capabilities](#section/Getting-started/Capabilities) for more details.

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
capability = SlipstreamClient::Capability::BILLING # Capability | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details.

begin
  # Remove capability
  api_instance.remove_practice_site_capability(site_slug, capability)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->remove_practice_site_capability: #{e}"
end
```

#### Using the remove_practice_site_capability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_practice_site_capability_with_http_info(site_slug, capability)

```ruby
begin
  # Remove capability
  data, status_code, headers = api_instance.remove_practice_site_capability_with_http_info(site_slug, capability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->remove_practice_site_capability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **capability** | [**Capability**](.md) | The capability to add to the practice, see [Capabilities](#section/Getting-started/Capabilities) for more details. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## update_practice_site

> <PracticeSiteIdentity> update_practice_site(site_slug, update_practice_site_details_request)

Update practice site details

Updates the details of a practice site in the Slipstream practice registry

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
update_practice_site_details_request = SlipstreamClient::UpdatePracticeSiteDetailsRequest.new # UpdatePracticeSiteDetailsRequest | The details of the practice site to onboard

begin
  # Update practice site details
  result = api_instance.update_practice_site(site_slug, update_practice_site_details_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->update_practice_site: #{e}"
end
```

#### Using the update_practice_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteIdentity>, Integer, Hash)> update_practice_site_with_http_info(site_slug, update_practice_site_details_request)

```ruby
begin
  # Update practice site details
  data, status_code, headers = api_instance.update_practice_site_with_http_info(site_slug, update_practice_site_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteIdentity>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->update_practice_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **update_practice_site_details_request** | [**UpdatePracticeSiteDetailsRequest**](UpdatePracticeSiteDetailsRequest.md) | The details of the practice site to onboard |  |

### Return type

[**PracticeSiteIdentity**](PracticeSiteIdentity.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## update_practice_site_capabilities

> update_practice_site_capabilities(site_slug, capability)

Replace capabilities

Replaces the list of functionality that a practice site (and the software it is using) supports. See [Capabilities](#section/Getting-started/Capabilities) for more details.

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

api_instance = SlipstreamClient::SiteDetailsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
capability = [SlipstreamClient::Capability::BILLING] # Array<Capability> | The capabilities supported by the practice site

begin
  # Replace capabilities
  api_instance.update_practice_site_capabilities(site_slug, capability)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->update_practice_site_capabilities: #{e}"
end
```

#### Using the update_practice_site_capabilities_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_practice_site_capabilities_with_http_info(site_slug, capability)

```ruby
begin
  # Replace capabilities
  data, status_code, headers = api_instance.update_practice_site_capabilities_with_http_info(site_slug, capability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SiteDetailsApi->update_practice_site_capabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **capability** | [**Array&lt;Capability&gt;**](Capability.md) | The capabilities supported by the practice site |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

