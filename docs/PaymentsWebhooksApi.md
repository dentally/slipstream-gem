# SlipstreamClient::PaymentsWebhooksApi

All URIs are relative to *https://slipstream.au.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payment_subscription**](PaymentsWebhooksApi.md#get_payment_subscription) | **GET** /sites/{SiteSlug}/webhooks/features/payments | Get subscription information |
| [**subscribe_to_payments_post**](PaymentsWebhooksApi.md#subscribe_to_payments_post) | **PUT** /sites/{SiteSlug}/webhooks/features/payments | Subscribe |
| [**unsubscribe_from_payments_post**](PaymentsWebhooksApi.md#unsubscribe_from_payments_post) | **DELETE** /sites/{SiteSlug}/webhooks/features/payments | Unsubscribe |


## get_payment_subscription

> <WebhookSubscriptionDetails> get_payment_subscription(site_slug)

Get subscription information

Gets subscription information for payment events

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

api_instance = SlipstreamClient::PaymentsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Get subscription information
  result = api_instance.get_payment_subscription(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->get_payment_subscription: #{e}"
end
```

#### Using the get_payment_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscriptionDetails>, Integer, Hash)> get_payment_subscription_with_http_info(site_slug)

```ruby
begin
  # Get subscription information
  data, status_code, headers = api_instance.get_payment_subscription_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscriptionDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->get_payment_subscription_with_http_info: #{e}"
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


## subscribe_to_payments_post

> <WebhookSubscription> subscribe_to_payments_post(site_slug, webhook_subscription)

Subscribe

Subscribe to receive webhook events for payments

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

api_instance = SlipstreamClient::PaymentsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
webhook_subscription = SlipstreamClient::WebhookSubscription.new({uri: 'https://mywebhookreceiver.com/endpoint'}) # WebhookSubscription | 

begin
  # Subscribe
  result = api_instance.subscribe_to_payments_post(site_slug, webhook_subscription)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->subscribe_to_payments_post: #{e}"
end
```

#### Using the subscribe_to_payments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> subscribe_to_payments_post_with_http_info(site_slug, webhook_subscription)

```ruby
begin
  # Subscribe
  data, status_code, headers = api_instance.subscribe_to_payments_post_with_http_info(site_slug, webhook_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->subscribe_to_payments_post_with_http_info: #{e}"
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


## unsubscribe_from_payments_post

> <WebhookSubscription> unsubscribe_from_payments_post(site_slug)

Unsubscribe

Unsubscribe from receiving webhooks events for payments

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

api_instance = SlipstreamClient::PaymentsWebhooksApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # Unsubscribe
  result = api_instance.unsubscribe_from_payments_post(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->unsubscribe_from_payments_post: #{e}"
end
```

#### Using the unsubscribe_from_payments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> unsubscribe_from_payments_post_with_http_info(site_slug)

```ruby
begin
  # Unsubscribe
  data, status_code, headers = api_instance.unsubscribe_from_payments_post_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsWebhooksApi->unsubscribe_from_payments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

