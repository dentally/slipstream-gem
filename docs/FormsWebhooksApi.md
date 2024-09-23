# SlipstreamClient::FormsWebhooksApi

All URIs are relative to *https://slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_forms_subscription**](FormsWebhooksApi.md#get_forms_subscription) | **GET** /sites/{SiteSlug}/webhooks/features/forms | Get subscription information |
| [**subscribe_to_forms**](FormsWebhooksApi.md#subscribe_to_forms) | **PUT** /sites/{SiteSlug}/webhooks/features/forms | Subscribe |
| [**unsubscribe_to_forms**](FormsWebhooksApi.md#unsubscribe_to_forms) | **DELETE** /sites/{SiteSlug}/webhooks/features/forms | Unsubscribe |


## get_forms_subscription

> <WebhookSubscriptionDetails> get_forms_subscription(site_slug)

Get subscription information

Gets subscription information for forms events

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

api_instance = SlipstreamClient::FormsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Get subscription information
  result = api_instance.get_forms_subscription(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->get_forms_subscription: #{e}"
end
```

#### Using the get_forms_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscriptionDetails>, Integer, Hash)> get_forms_subscription_with_http_info(site_slug)

```ruby
begin
  # Get subscription information
  data, status_code, headers = api_instance.get_forms_subscription_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscriptionDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->get_forms_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**WebhookSubscriptionDetails**](WebhookSubscriptionDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## subscribe_to_forms

> <WebhookSubscription> subscribe_to_forms(site_slug, webhook_subscription)

Subscribe

Subscribe to receive webhooks for forms events

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

api_instance = SlipstreamClient::FormsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
webhook_subscription = SlipstreamClient::WebhookSubscription.new({uri: 'https://mywebhookreceiver.com/endpoint'}) # WebhookSubscription | 

begin
  # Subscribe
  result = api_instance.subscribe_to_forms(site_slug, webhook_subscription)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->subscribe_to_forms: #{e}"
end
```

#### Using the subscribe_to_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> subscribe_to_forms_with_http_info(site_slug, webhook_subscription)

```ruby
begin
  # Subscribe
  data, status_code, headers = api_instance.subscribe_to_forms_with_http_info(site_slug, webhook_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->subscribe_to_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **webhook_subscription** | [**WebhookSubscription**](WebhookSubscription.md) |  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## unsubscribe_to_forms

> unsubscribe_to_forms(site_slug)

Unsubscribe

Unsubscribe from receiving webhooks for forms events

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

api_instance = SlipstreamClient::FormsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Unsubscribe
  api_instance.unsubscribe_to_forms(site_slug)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->unsubscribe_to_forms: #{e}"
end
```

#### Using the unsubscribe_to_forms_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unsubscribe_to_forms_with_http_info(site_slug)

```ruby
begin
  # Unsubscribe
  data, status_code, headers = api_instance.unsubscribe_to_forms_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling FormsWebhooksApi->unsubscribe_to_forms_with_http_info: #{e}"
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

