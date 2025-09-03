# SlipstreamClient::LinksApi

All URIs are relative to *https://slipstream.uk.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_short_links**](LinksApi.md#create_short_links) | **POST** /sites/{SiteSlug}/links | Create short links |
| [**delete_short_link**](LinksApi.md#delete_short_link) | **DELETE** /sites/{SiteSlug}/links/{LinkSlug} | Delete Shortened Link |
| [**get_short_link**](LinksApi.md#get_short_link) | **GET** /sites/{SiteSlug}/links/{LinkSlug} | Get Shortened Link |
| [**list_short_links**](LinksApi.md#list_short_links) | **GET** /sites/{SiteSlug}/links | List Shortened Links |


## create_short_links

> <ShortLinksCreatedResponse> create_short_links(site_slug, shorten_link_request)

Create short links

Creates shortened versions of one or more URLs

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

api_instance = SlipstreamClient::LinksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
shorten_link_request = [SlipstreamClient::ShortenLinkRequest.new({full_link: 'https://www.google.com?q=sqids'})] # Array<ShortenLinkRequest> | The long links to shorten

begin
  # Create short links
  result = api_instance.create_short_links(site_slug, shorten_link_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->create_short_links: #{e}"
end
```

#### Using the create_short_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShortLinksCreatedResponse>, Integer, Hash)> create_short_links_with_http_info(site_slug, shorten_link_request)

```ruby
begin
  # Create short links
  data, status_code, headers = api_instance.create_short_links_with_http_info(site_slug, shorten_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShortLinksCreatedResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->create_short_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **shorten_link_request** | [**Array&lt;ShortenLinkRequest&gt;**](ShortenLinkRequest.md) | The long links to shorten |  |

### Return type

[**ShortLinksCreatedResponse**](ShortLinksCreatedResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_short_link

> delete_short_link(site_slug, link_slug)

Delete Shortened Link

Deletes a shortened link by ID

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

api_instance = SlipstreamClient::LinksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
link_slug = 'link_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a shortened link

begin
  # Delete Shortened Link
  api_instance.delete_short_link(site_slug, link_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->delete_short_link: #{e}"
end
```

#### Using the delete_short_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_short_link_with_http_info(site_slug, link_slug)

```ruby
begin
  # Delete Shortened Link
  data, status_code, headers = api_instance.delete_short_link_with_http_info(site_slug, link_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->delete_short_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **link_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a shortened link |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_short_link

> <ShortenedLink> get_short_link(site_slug, link_slug)

Get Shortened Link

Gets the details of a shortened link by ID

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

api_instance = SlipstreamClient::LinksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
link_slug = 'link_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a shortened link

begin
  # Get Shortened Link
  result = api_instance.get_short_link(site_slug, link_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->get_short_link: #{e}"
end
```

#### Using the get_short_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShortenedLink>, Integer, Hash)> get_short_link_with_http_info(site_slug, link_slug)

```ruby
begin
  # Get Shortened Link
  data, status_code, headers = api_instance.get_short_link_with_http_info(site_slug, link_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShortenedLink>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->get_short_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **link_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a shortened link |  |

### Return type

[**ShortenedLink**](ShortenedLink.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_short_links

> <ShortenedLinksListResponse> list_short_links(site_slug, opts)

List Shortened Links

Lists active short links for the site

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

api_instance = SlipstreamClient::LinksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
opts = {
  page_size: 50, # Integer | The page number to retrieve
  next_page_token: 'next_page_token_example', # String | A token retrieved from a previous request, used to retrieve the next page of results
  is_visited: true, # Boolean | If specified, filters the list to only links that are visited or unvisited. Omit to include all links
  has_click_tracking: true # Boolean | If specified, filters the list to only links that count clicks or don't count clicks. Omit to include all links
}

begin
  # List Shortened Links
  result = api_instance.list_short_links(site_slug, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->list_short_links: #{e}"
end
```

#### Using the list_short_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShortenedLinksListResponse>, Integer, Hash)> list_short_links_with_http_info(site_slug, opts)

```ruby
begin
  # List Shortened Links
  data, status_code, headers = api_instance.list_short_links_with_http_info(site_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShortenedLinksListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling LinksApi->list_short_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **page_size** | **Integer** | The page number to retrieve | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |
| **is_visited** | **Boolean** | If specified, filters the list to only links that are visited or unvisited. Omit to include all links | [optional] |
| **has_click_tracking** | **Boolean** | If specified, filters the list to only links that count clicks or don&#39;t count clicks. Omit to include all links | [optional] |

### Return type

[**ShortenedLinksListResponse**](ShortenedLinksListResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

