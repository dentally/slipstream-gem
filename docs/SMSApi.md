# SlipstreamClient::SMSApi

All URIs are relative to *https://slipstream.uk.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sms_details**](SMSApi.md#get_sms_details) | **GET** /sites/{SiteSlug}/sms/{SmsId} | Get sms details |
| [**send_sms**](SMSApi.md#send_sms) | **POST** /sites/{SiteSlug}/sms | Send SMS |


## get_sms_details

> <SmsDetails> get_sms_details(site_slug, sms_id)

Get sms details

Gets the details of an sms sent on behalf of the practice

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

api_instance = SlipstreamClient::SMSApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
sms_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The Id that uniquely identifies the sms in Slipstream

begin
  # Get sms details
  result = api_instance.get_sms_details(site_slug, sms_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SMSApi->get_sms_details: #{e}"
end
```

#### Using the get_sms_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmsDetails>, Integer, Hash)> get_sms_details_with_http_info(site_slug, sms_id)

```ruby
begin
  # Get sms details
  data, status_code, headers = api_instance.get_sms_details_with_http_info(site_slug, sms_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmsDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SMSApi->get_sms_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **sms_id** | **String** | The Id that uniquely identifies the sms in Slipstream |  |

### Return type

[**SmsDetails**](SmsDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## send_sms

> <SendSmsResponse> send_sms(site_slug, send_sms_request)

Send SMS

Queues an SMS for sending on behalf of the practice

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

api_instance = SlipstreamClient::SMSApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
send_sms_request = [SlipstreamClient::SendSmsRequest.new({pms_specific_id: '{064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e}', to: '+31612345678', message_body: 'Hello, this is a test message'})] # Array<SendSmsRequest> | The details of the SMS to send

begin
  # Send SMS
  result = api_instance.send_sms(site_slug, send_sms_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SMSApi->send_sms: #{e}"
end
```

#### Using the send_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendSmsResponse>, Integer, Hash)> send_sms_with_http_info(site_slug, send_sms_request)

```ruby
begin
  # Send SMS
  data, status_code, headers = api_instance.send_sms_with_http_info(site_slug, send_sms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendSmsResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SMSApi->send_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **send_sms_request** | [**Array&lt;SendSmsRequest&gt;**](SendSmsRequest.md) | The details of the SMS to send |  |

### Return type

[**SendSmsResponse**](SendSmsResponse.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

