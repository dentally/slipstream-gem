# SlipstreamClient::EmailApi

All URIs are relative to *https://slipstream.au.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_email_status**](EmailApi.md#get_email_status) | **GET** /sites/{SiteSlug}/email/{EmailId} | Get email status |
| [**send_email**](EmailApi.md#send_email) | **POST** /sites/{SiteSlug}/email | Send email |


## get_email_status

> <EmailStatusRecord> get_email_status(site_slug, email_id)

Get email status

Gets the status of an email sent on behalf of the practice

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

api_instance = SlipstreamClient::EmailApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
email_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The Id that uniquely identifies the email in Slipstream

begin
  # Get email status
  result = api_instance.get_email_status(site_slug, email_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EmailApi->get_email_status: #{e}"
end
```

#### Using the get_email_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailStatusRecord>, Integer, Hash)> get_email_status_with_http_info(site_slug, email_id)

```ruby
begin
  # Get email status
  data, status_code, headers = api_instance.get_email_status_with_http_info(site_slug, email_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailStatusRecord>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EmailApi->get_email_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **email_id** | **String** | The Id that uniquely identifies the email in Slipstream |  |

### Return type

[**EmailStatusRecord**](EmailStatusRecord.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## send_email

> <EmailRecordIdentity> send_email(site_slug, send_email_request)

Send email

Queues an email for sending on behalf of the practice

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

api_instance = SlipstreamClient::EmailApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
send_email_request = SlipstreamClient::SendEmailRequest.new({pms_specific_id: '{064a5f0e-0b0e-4e1e-8e1e-0e0e0e0e0e0e}', to: [SlipstreamClient::EmailAddressWithDisplayName.new({address: 'john.smith@example.com'})], subject: 'This is a test email', body: 'Here is the body of the email', sender_properties: SlipstreamClient::EmailSenderProperties.new({sender_domain: SlipstreamClient::EmailDomain::DEFAULT})}) # SendEmailRequest | The details of the email to send

begin
  # Send email
  result = api_instance.send_email(site_slug, send_email_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EmailApi->send_email: #{e}"
end
```

#### Using the send_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailRecordIdentity>, Integer, Hash)> send_email_with_http_info(site_slug, send_email_request)

```ruby
begin
  # Send email
  data, status_code, headers = api_instance.send_email_with_http_info(site_slug, send_email_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailRecordIdentity>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling EmailApi->send_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **send_email_request** | [**SendEmailRequest**](SendEmailRequest.md) | The details of the email to send |  |

### Return type

[**EmailRecordIdentity**](EmailRecordIdentity.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

