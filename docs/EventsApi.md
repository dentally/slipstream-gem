# SlipstreamClient::EventsApi

All URIs are relative to *https://slipstream.uk.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_options**](EventsApi.md#events_options) | **OPTIONS** /sites/{SiteSlug}/events | Validate Webhook Subscription |
| [**publish_events**](EventsApi.md#publish_events) | **POST** /sites/{SiteSlug}/events | Publish Events |


## events_options

> events_options(site_slug, opts)

Validate Webhook Subscription

Implements the [cloudevents validation](https://github.com/cloudevents/spec/blob/main/cloudevents/http-webhook.md#41-validation-request) specification so that standard cloudevent publishers can use it.

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

api_instance = SlipstreamClient::EventsApi.new
site_slug = 'site_slug_example' # String | The unique slug for the practice site
opts = {
  web_hook_request_rate: 1000, # Integer | The rate at which the client can send requests to the server
  web_hook_request_origin: '*' # String | The origin that is allowed to send requests to the server
}

begin
  # Validate Webhook Subscription
  api_instance.events_options(site_slug, opts)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EventsApi->events_options: #{e}"
end
```

#### Using the events_options_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> events_options_with_http_info(site_slug, opts)

```ruby
begin
  # Validate Webhook Subscription
  data, status_code, headers = api_instance.events_options_with_http_info(site_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EventsApi->events_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The unique slug for the practice site |  |
| **web_hook_request_rate** | **Integer** | The rate at which the client can send requests to the server | [optional] |
| **web_hook_request_origin** | **String** | The origin that is allowed to send requests to the server | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## publish_events

> publish_events(site_slug, cloud_event)

Publish Events

Accepts CloudEvents or batches of CloudEvents related to the practice site. This can be used to send events to slipstream for processing, publishing as webhooks and analytics

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

api_instance = SlipstreamClient::EventsApi.new
site_slug = 'site_slug_example' # String | The unique slug for the practice site
cloud_event = SlipstreamClient::CloudEvent.new({specversion: 'specversion_example', id: 'id_example', source: 'source_example', type: 'Slipstream.UrlShortener.UrlCreated'}) # CloudEvent | 

begin
  # Publish Events
  api_instance.publish_events(site_slug, cloud_event)
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EventsApi->publish_events: #{e}"
end
```

#### Using the publish_events_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> publish_events_with_http_info(site_slug, cloud_event)

```ruby
begin
  # Publish Events
  data, status_code, headers = api_instance.publish_events_with_http_info(site_slug, cloud_event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EventsApi->publish_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The unique slug for the practice site |  |
| **cloud_event** | [**CloudEvent**](CloudEvent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/cloudevents+json, application/cloudevents-batch+json
- **Accept**: application/problem+json

