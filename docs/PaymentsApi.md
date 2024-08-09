# SlipstreamClient::PaymentsApi

All URIs are relative to *https://slipstream.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment**](PaymentsApi.md#create_payment) | **POST** /sites/{SiteSlug}/payments | Create a payment |
| [**create_payment_account**](PaymentsApi.md#create_payment_account) | **POST** /sites/{SiteSlug}/payments/accounts | Create account with payment provider |
| [**delete_payment_account**](PaymentsApi.md#delete_payment_account) | **DELETE** /sites/{SiteSlug}/payments/accounts/{AccountId} | Delete Payment Account |
| [**get_payment**](PaymentsApi.md#get_payment) | **GET** /sites/{SiteSlug}/payments/{PaymentIdentifier} | Get Payment Details |
| [**get_payment_account**](PaymentsApi.md#get_payment_account) | **GET** /sites/{SiteSlug}/payments/accounts/{AccountId} | Get Payment Account Details |
| [**list_payment_accounts**](PaymentsApi.md#list_payment_accounts) | **GET** /sites/{SiteSlug}/payments/accounts | List payment provider accounts |


## create_payment

> <PaymentDetails> create_payment(site_slug, create_payment_request)

Create a payment

Creates a payment

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
create_payment_request = SlipstreamClient::CreatePaymentRequest.new({payment_provider: SlipstreamClient::PaymentProvider::STRIPE, currency: 'USD'}) # CreatePaymentRequest | The details of the payment to create

begin
  # Create a payment
  result = api_instance.create_payment(site_slug, create_payment_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment: #{e}"
end
```

#### Using the create_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentDetails>, Integer, Hash)> create_payment_with_http_info(site_slug, create_payment_request)

```ruby
begin
  # Create a payment
  data, status_code, headers = api_instance.create_payment_with_http_info(site_slug, create_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) | The details of the payment to create |  |

### Return type

[**PaymentDetails**](PaymentDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_payment_account

> <PaymentAccountCreated> create_payment_account(site_slug, create_payment_account_request)

Create account with payment provider

Creates an account for the site with the specified payment provider

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
create_payment_account_request = SlipstreamClient::CreatePaymentAccountRequest.new # CreatePaymentAccountRequest | The details of the payment to create

begin
  # Create account with payment provider
  result = api_instance.create_payment_account(site_slug, create_payment_account_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_account: #{e}"
end
```

#### Using the create_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountCreated>, Integer, Hash)> create_payment_account_with_http_info(site_slug, create_payment_account_request)

```ruby
begin
  # Create account with payment provider
  data, status_code, headers = api_instance.create_payment_account_with_http_info(site_slug, create_payment_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountCreated>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **create_payment_account_request** | [**CreatePaymentAccountRequest**](CreatePaymentAccountRequest.md) | The details of the payment to create |  |

### Return type

[**PaymentAccountCreated**](PaymentAccountCreated.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_payment_account

> <PaymentAccountDeleted> delete_payment_account(site_slug, account_id)

Delete Payment Account

Delete a payment provider account by ID

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
account_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier of the payment account

begin
  # Delete Payment Account
  result = api_instance.delete_payment_account(site_slug, account_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_account: #{e}"
end
```

#### Using the delete_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountDeleted>, Integer, Hash)> delete_payment_account_with_http_info(site_slug, account_id)

```ruby
begin
  # Delete Payment Account
  data, status_code, headers = api_instance.delete_payment_account_with_http_info(site_slug, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountDeleted>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **account_id** | **String** | The unique identifier of the payment account |  |

### Return type

[**PaymentAccountDeleted**](PaymentAccountDeleted.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment

> <PaymentDetails> get_payment(site_slug, payment_identifier, opts)

Get Payment Details

Gets the details of a payment by ID

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
payment_identifier = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier of the payment
opts = {
  include_history: false # Boolean | If true, the response will include the history of the payment
}

begin
  # Get Payment Details
  result = api_instance.get_payment(site_slug, payment_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment: #{e}"
end
```

#### Using the get_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentDetails>, Integer, Hash)> get_payment_with_http_info(site_slug, payment_identifier, opts)

```ruby
begin
  # Get Payment Details
  data, status_code, headers = api_instance.get_payment_with_http_info(site_slug, payment_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **payment_identifier** | **String** | The unique identifier of the payment |  |
| **include_history** | **Boolean** | If true, the response will include the history of the payment | [optional] |

### Return type

[**PaymentDetails**](PaymentDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_account

> <PaymentAccountDetails> get_payment_account(site_slug, account_id)

Get Payment Account Details

Gets the details of a payment provider account by ID

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
account_id = '44088399-d916-4de5-9f0a-dca7b3d07df2' # String | The unique identifier of the payment account

begin
  # Get Payment Account Details
  result = api_instance.get_payment_account(site_slug, account_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_account: #{e}"
end
```

#### Using the get_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountDetails>, Integer, Hash)> get_payment_account_with_http_info(site_slug, account_id)

```ruby
begin
  # Get Payment Account Details
  data, status_code, headers = api_instance.get_payment_account_with_http_info(site_slug, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountDetails>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **account_id** | **String** | The unique identifier of the payment account |  |

### Return type

[**PaymentAccountDetails**](PaymentAccountDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_payment_accounts

> <Array<PaymentAccountDetails>> list_payment_accounts(site_slug)

List payment provider accounts

List all payment provider accounts for the site

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

api_instance = SlipstreamClient::PaymentsApi.new
site_slug = 'site_slug_example' # String | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice

begin
  # List payment provider accounts
  result = api_instance.list_payment_accounts(site_slug)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->list_payment_accounts: #{e}"
end
```

#### Using the list_payment_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PaymentAccountDetails>>, Integer, Hash)> list_payment_accounts_with_http_info(site_slug)

```ruby
begin
  # List payment provider accounts
  data, status_code, headers = api_instance.list_payment_accounts_with_http_info(site_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PaymentAccountDetails>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->list_payment_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |

### Return type

[**Array&lt;PaymentAccountDetails&gt;**](PaymentAccountDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

