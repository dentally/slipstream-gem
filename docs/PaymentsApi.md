# SlipstreamClient::PaymentsApi

All URIs are relative to *https://slipstream.uk.hsone.app/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment**](PaymentsApi.md#create_payment) | **POST** /sites/{SiteSlug}/payments/{PaymentProvider}/payment-intents | Create a payment |
| [**create_payment_account**](PaymentsApi.md#create_payment_account) | **POST** /sites/{SiteSlug}/payments/{PaymentProvider}/account | Create a new payment account |
| [**delete_payment_account**](PaymentsApi.md#delete_payment_account) | **DELETE** /sites/{SiteSlug}/payments/{PaymentProvider}/account | Delete Payment Account |
| [**get_payment**](PaymentsApi.md#get_payment) | **GET** /sites/{SiteSlug}/payments/{PaymentProvider}/payment-intents/{PaymentId} | Get Payment Details |
| [**get_payment_account**](PaymentsApi.md#get_payment_account) | **GET** /sites/{SiteSlug}/payments/{PaymentProvider}/account | Get Payment Account Details |
| [**get_payment_account_oauth_connect**](PaymentsApi.md#get_payment_account_oauth_connect) | **GET** /sites/{SiteSlug}/payments/{PaymentProvider}/account/oauth-connect | Get Payment Account OAuth Connect URL |
| [**link_payment_account**](PaymentsApi.md#link_payment_account) | **PUT** /sites/{SiteSlug}/payments/{PaymentProvider}/account/{AccountId} | Link an existing Payment Account to a Site |
| [**list_payment_accounts**](PaymentsApi.md#list_payment_accounts) | **GET** /sites/{SiteSlug}/payments/accounts | List payment provider accounts |
| [**post_payment_account_oauth_deauthorise**](PaymentsApi.md#post_payment_account_oauth_deauthorise) | **GET** /sites/{SiteSlug}/payments/{PaymentProvider}/account/oauth-deauthorise | Deauthorise Payment Account via OAuth |


## create_payment

> <PaymentCreated> create_payment(site_slug, payment_provider, create_payment_request)

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider
create_payment_request = SlipstreamClient::CreatePaymentRequest.new({currency: 'USD'}) # CreatePaymentRequest | The details of the payment to create

begin
  # Create a payment
  result = api_instance.create_payment(site_slug, payment_provider, create_payment_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment: #{e}"
end
```

#### Using the create_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentCreated>, Integer, Hash)> create_payment_with_http_info(site_slug, payment_provider, create_payment_request)

```ruby
begin
  # Create a payment
  data, status_code, headers = api_instance.create_payment_with_http_info(site_slug, payment_provider, create_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentCreated>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) | The details of the payment to create |  |

### Return type

[**PaymentCreated**](PaymentCreated.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_payment_account

> <PaymentAccountCreated> create_payment_account(site_slug, payment_provider, create_payment_account_request)

Create a new payment account

Create or resume onboarding a new payment account with the specified payment provider

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider
create_payment_account_request = SlipstreamClient::CreatePaymentAccountRequest.new # CreatePaymentAccountRequest | The details of the account to create

begin
  # Create a new payment account
  result = api_instance.create_payment_account(site_slug, payment_provider, create_payment_account_request)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_account: #{e}"
end
```

#### Using the create_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountCreated>, Integer, Hash)> create_payment_account_with_http_info(site_slug, payment_provider, create_payment_account_request)

```ruby
begin
  # Create a new payment account
  data, status_code, headers = api_instance.create_payment_account_with_http_info(site_slug, payment_provider, create_payment_account_request)
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
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |
| **create_payment_account_request** | [**CreatePaymentAccountRequest**](CreatePaymentAccountRequest.md) | The details of the account to create |  |

### Return type

[**PaymentAccountCreated**](PaymentAccountCreated.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_payment_account

> <PaymentAccountDeleted> delete_payment_account(site_slug, payment_provider, opts)

Delete Payment Account

Delete a payment account for the specified payment provider

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider
opts = {
  delete_external_account: true # Boolean | If true, the external account will be deleted from the payment provider. This is only supported for test accounts with certain payment providers (Stripe).
}

begin
  # Delete Payment Account
  result = api_instance.delete_payment_account(site_slug, payment_provider, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_account: #{e}"
end
```

#### Using the delete_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountDeleted>, Integer, Hash)> delete_payment_account_with_http_info(site_slug, payment_provider, opts)

```ruby
begin
  # Delete Payment Account
  data, status_code, headers = api_instance.delete_payment_account_with_http_info(site_slug, payment_provider, opts)
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
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |
| **delete_external_account** | **Boolean** | If true, the external account will be deleted from the payment provider. This is only supported for test accounts with certain payment providers (Stripe). | [optional] |

### Return type

[**PaymentAccountDeleted**](PaymentAccountDeleted.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment

> <PaymentDetails> get_payment(site_slug, payment_provider, payment_id, opts)

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider
payment_id = '123e4567-e89b-12d3-a456-426614174000' # String | The unique identifier of the payment
opts = {
  include_history: false # Boolean | If true, the response will include the history of the payment
}

begin
  # Get Payment Details
  result = api_instance.get_payment(site_slug, payment_provider, payment_id, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment: #{e}"
end
```

#### Using the get_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentDetails>, Integer, Hash)> get_payment_with_http_info(site_slug, payment_provider, payment_id, opts)

```ruby
begin
  # Get Payment Details
  data, status_code, headers = api_instance.get_payment_with_http_info(site_slug, payment_provider, payment_id, opts)
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
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |
| **payment_id** | **String** | The unique identifier of the payment |  |
| **include_history** | **Boolean** | If true, the response will include the history of the payment | [optional] |

### Return type

[**PaymentDetails**](PaymentDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_account

> <PaymentAccountDetails> get_payment_account(site_slug, payment_provider)

Get Payment Account Details

Gets the details of a site's payment account for the specified payment provider

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider

begin
  # Get Payment Account Details
  result = api_instance.get_payment_account(site_slug, payment_provider)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_account: #{e}"
end
```

#### Using the get_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountDetails>, Integer, Hash)> get_payment_account_with_http_info(site_slug, payment_provider)

```ruby
begin
  # Get Payment Account Details
  data, status_code, headers = api_instance.get_payment_account_with_http_info(site_slug, payment_provider)
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
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |

### Return type

[**PaymentAccountDetails**](PaymentAccountDetails.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_account_oauth_connect

> <PaymentAccountOAuthConnect> get_payment_account_oauth_connect(site_slug, payment_provider)

Get Payment Account OAuth Connect URL

Get a link to connect the site account with the payment provider to HSO's payment platform (Stripe Connect)

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider

begin
  # Get Payment Account OAuth Connect URL
  result = api_instance.get_payment_account_oauth_connect(site_slug, payment_provider)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_account_oauth_connect: #{e}"
end
```

#### Using the get_payment_account_oauth_connect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountOAuthConnect>, Integer, Hash)> get_payment_account_oauth_connect_with_http_info(site_slug, payment_provider)

```ruby
begin
  # Get Payment Account OAuth Connect URL
  data, status_code, headers = api_instance.get_payment_account_oauth_connect_with_http_info(site_slug, payment_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountOAuthConnect>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_account_oauth_connect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |

### Return type

[**PaymentAccountOAuthConnect**](PaymentAccountOAuthConnect.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## link_payment_account

> <PaymentAccountLinked> link_payment_account(site_slug, payment_provider, account_id)

Link an existing Payment Account to a Site

Links an existing payment provider account to the site

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider
account_id = 'acct_1234567890' # String | The identifier for the existing payment account to link

begin
  # Link an existing Payment Account to a Site
  result = api_instance.link_payment_account(site_slug, payment_provider, account_id)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->link_payment_account: #{e}"
end
```

#### Using the link_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountLinked>, Integer, Hash)> link_payment_account_with_http_info(site_slug, payment_provider, account_id)

```ruby
begin
  # Link an existing Payment Account to a Site
  data, status_code, headers = api_instance.link_payment_account_with_http_info(site_slug, payment_provider, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountLinked>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->link_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |
| **account_id** | **String** | The identifier for the existing payment account to link |  |

### Return type

[**PaymentAccountLinked**](PaymentAccountLinked.md)

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


## post_payment_account_oauth_deauthorise

> <PaymentAccountOAuthDeauthorise> post_payment_account_oauth_deauthorise(site_slug, payment_provider)

Deauthorise Payment Account via OAuth

Deauthorise the payment account's access to HSO's payment platform (Stripe Connect)

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
payment_provider = SlipstreamClient::PaymentProvider::STRIPE # PaymentProvider | The payment provider

begin
  # Deauthorise Payment Account via OAuth
  result = api_instance.post_payment_account_oauth_deauthorise(site_slug, payment_provider)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->post_payment_account_oauth_deauthorise: #{e}"
end
```

#### Using the post_payment_account_oauth_deauthorise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountOAuthDeauthorise>, Integer, Hash)> post_payment_account_oauth_deauthorise_with_http_info(site_slug, payment_provider)

```ruby
begin
  # Deauthorise Payment Account via OAuth
  data, status_code, headers = api_instance.post_payment_account_oauth_deauthorise_with_http_info(site_slug, payment_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountOAuthDeauthorise>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling PaymentsApi->post_payment_account_oauth_deauthorise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_slug** | **String** | The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice |  |
| **payment_provider** | [**PaymentProvider**](.md) | The payment provider |  |

### Return type

[**PaymentAccountOAuthDeauthorise**](PaymentAccountOAuthDeauthorise.md)

### Authorization

[api_key](../README.md#api_key), [azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

