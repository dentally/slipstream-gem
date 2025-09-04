# SlipstreamClient::SitesApi

All URIs are relative to *https://slipstream.hsone.dev/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_site_api_permissions**](SitesApi.md#add_site_api_permissions) | **PATCH** /management/sites/{SiteIdentifier}/api/permissions/{AccountIdentifier} | Grant API permissions |
| [**delete_site**](SitesApi.md#delete_site) | **DELETE** /management/sites/{SiteIdentifier} | Delete a practice site |
| [**get_practice_site_identity_with_keys**](SitesApi.md#get_practice_site_identity_with_keys) | **GET** /management/sites/{SiteIdentifier}/identity | Get practice identity |
| [**get_site_api_permissions**](SitesApi.md#get_site_api_permissions) | **GET** /management/sites/{SiteIdentifier}/api/permissions/{AccountIdentifier} | Get active API permissions |
| [**get_site_authorized_api_accounts**](SitesApi.md#get_site_authorized_api_accounts) | **GET** /management/sites/{SiteIdentifier}/api/permissions | Get api accounts which currently have access to this site |
| [**list_practice_sites**](SitesApi.md#list_practice_sites) | **GET** /sites | List Practice Sites |
| [**onboard_site**](SitesApi.md#onboard_site) | **POST** /management/sites/{SiteIdentifier} | Upsert practice site |
| [**revoke_site_api_permissions**](SitesApi.md#revoke_site_api_permissions) | **DELETE** /management/sites/{SiteIdentifier}/api/permissions/{AccountIdentifier} | Revoke API permissions |


## add_site_api_permissions

> <Array<PublicApiPermission>> add_site_api_permissions(site_identifier, account_identifier, public_api_permission, opts)

Grant API permissions

Adds the given permissions to the specified api account for the specified site. If the account currently has no permissions, the listed ones will be granted

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
account_identifier = '7a1b3c5d-9e8f-4a2b-6c7d-8e9f0a1b2c3d' # String | The id of the integration account that you want to view / change permissions for. This is the same as the `AccountIdentifier` in the Public API.
public_api_permission = [SlipstreamClient::PublicApiPermission::PATIENTS_READ] # Array<PublicApiPermission> | The permissions to add to the specified api account for the specified site
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Grant API permissions
  result = api_instance.add_site_api_permissions(site_identifier, account_identifier, public_api_permission, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->add_site_api_permissions: #{e}"
end
```

#### Using the add_site_api_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PublicApiPermission>>, Integer, Hash)> add_site_api_permissions_with_http_info(site_identifier, account_identifier, public_api_permission, opts)

```ruby
begin
  # Grant API permissions
  data, status_code, headers = api_instance.add_site_api_permissions_with_http_info(site_identifier, account_identifier, public_api_permission, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PublicApiPermission>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->add_site_api_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **account_identifier** | **String** | The id of the integration account that you want to view / change permissions for. This is the same as the &#x60;AccountIdentifier&#x60; in the Public API. |  |
| **public_api_permission** | [**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md) | The permissions to add to the specified api account for the specified site |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_site

> <PracticeSiteDeleted> delete_site(site_identifier, opts)

Delete a practice site

Deletes a practice site from the slipstream practice registry. Will also delete the owning organisation if this is the last practice in the organisation.

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Delete a practice site
  result = api_instance.delete_site(site_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->delete_site: #{e}"
end
```

#### Using the delete_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteDeleted>, Integer, Hash)> delete_site_with_http_info(site_identifier, opts)

```ruby
begin
  # Delete a practice site
  data, status_code, headers = api_instance.delete_site_with_http_info(site_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteDeleted>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->delete_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**PracticeSiteDeleted**](PracticeSiteDeleted.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_practice_site_identity_with_keys

> <PracticeSiteIdentityWithKeys> get_practice_site_identity_with_keys(site_identifier, opts)

Get practice identity

Fetches the identity of a given practice in slipstream and API Keys which can be used on the other endpoints

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Get practice identity
  result = api_instance.get_practice_site_identity_with_keys(site_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_practice_site_identity_with_keys: #{e}"
end
```

#### Using the get_practice_site_identity_with_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteIdentityWithKeys>, Integer, Hash)> get_practice_site_identity_with_keys_with_http_info(site_identifier, opts)

```ruby
begin
  # Get practice identity
  data, status_code, headers = api_instance.get_practice_site_identity_with_keys_with_http_info(site_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteIdentityWithKeys>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_practice_site_identity_with_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**PracticeSiteIdentityWithKeys**](PracticeSiteIdentityWithKeys.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_site_api_permissions

> <Array<PublicApiPermission>> get_site_api_permissions(site_identifier, account_identifier, opts)

Get active API permissions

Returns the permissions for the specified api account for the specified site

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
account_identifier = '7a1b3c5d-9e8f-4a2b-6c7d-8e9f0a1b2c3d' # String | The id of the integration account that you want to view / change permissions for. This is the same as the `AccountIdentifier` in the Public API.
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Get active API permissions
  result = api_instance.get_site_api_permissions(site_identifier, account_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_site_api_permissions: #{e}"
end
```

#### Using the get_site_api_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PublicApiPermission>>, Integer, Hash)> get_site_api_permissions_with_http_info(site_identifier, account_identifier, opts)

```ruby
begin
  # Get active API permissions
  data, status_code, headers = api_instance.get_site_api_permissions_with_http_info(site_identifier, account_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PublicApiPermission>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_site_api_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **account_identifier** | **String** | The id of the integration account that you want to view / change permissions for. This is the same as the &#x60;AccountIdentifier&#x60; in the Public API. |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_site_authorized_api_accounts

> <Array<AuthorizedApiAccount>> get_site_authorized_api_accounts(site_identifier, opts)

Get api accounts which currently have access to this site

Returns the accounts which currently have access to this site, along with their permissions

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Get api accounts which currently have access to this site
  result = api_instance.get_site_authorized_api_accounts(site_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_site_authorized_api_accounts: #{e}"
end
```

#### Using the get_site_authorized_api_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AuthorizedApiAccount>>, Integer, Hash)> get_site_authorized_api_accounts_with_http_info(site_identifier, opts)

```ruby
begin
  # Get api accounts which currently have access to this site
  data, status_code, headers = api_instance.get_site_authorized_api_accounts_with_http_info(site_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AuthorizedApiAccount>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->get_site_authorized_api_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**Array&lt;AuthorizedApiAccount&gt;**](AuthorizedApiAccount.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_practice_sites

> <PracticeSiteListResponse> list_practice_sites(opts)

List Practice Sites

Lists practice sites in the slipstream practice registry

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
opts = {
  page_size: 50, # Integer | The page number to retrieve
  next_page_token: 'next_page_token_example', # String | A token retrieved from a previous request, used to retrieve the next page of results
  sites: ['s8n6EzC'], # Array<String> | The slugs of the sites to return
  owning_organisations: ['s8n6EzC'], # Array<String> | The slugs of the owning organisation to return sites for
  billing_organisations: ['s8n6EzC'], # Array<String> | The slugs of the billing organisation to return sites for
  countries: ['USA'], # Array<String> | The countries to return sites for
  is_active: false, # Boolean | Filter active or inactive sites.
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # List Practice Sites
  result = api_instance.list_practice_sites(opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->list_practice_sites: #{e}"
end
```

#### Using the list_practice_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteListResponse>, Integer, Hash)> list_practice_sites_with_http_info(opts)

```ruby
begin
  # List Practice Sites
  data, status_code, headers = api_instance.list_practice_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteListResponse>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->list_practice_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The page number to retrieve | [optional] |
| **next_page_token** | **String** | A token retrieved from a previous request, used to retrieve the next page of results | [optional] |
| **sites** | [**Array&lt;String&gt;**](String.md) | The slugs of the sites to return | [optional] |
| **owning_organisations** | [**Array&lt;String&gt;**](String.md) | The slugs of the owning organisation to return sites for | [optional] |
| **billing_organisations** | [**Array&lt;String&gt;**](String.md) | The slugs of the billing organisation to return sites for | [optional] |
| **countries** | [**Array&lt;String&gt;**](String.md) | The countries to return sites for | [optional] |
| **is_active** | **Boolean** | Filter active or inactive sites. | [optional] |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**PracticeSiteListResponse**](PracticeSiteListResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## onboard_site

> <PracticeSiteIdentityWithKeys> onboard_site(site_identifier, practice_site_onboarding_request, opts)

Upsert practice site

Creates a practice site in the slipstream practice registry and returns a unique identifier and API Keys which can be used on the site APIs

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
practice_site_onboarding_request = SlipstreamClient::PracticeSiteOnboardingRequest.new({name: 'DentalCare Clinic'}) # PracticeSiteOnboardingRequest | The details of the practice to onboard
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
}

begin
  # Upsert practice site
  result = api_instance.onboard_site(site_identifier, practice_site_onboarding_request, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->onboard_site: #{e}"
end
```

#### Using the onboard_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeSiteIdentityWithKeys>, Integer, Hash)> onboard_site_with_http_info(site_identifier, practice_site_onboarding_request, opts)

```ruby
begin
  # Upsert practice site
  data, status_code, headers = api_instance.onboard_site_with_http_info(site_identifier, practice_site_onboarding_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeSiteIdentityWithKeys>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->onboard_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **practice_site_onboarding_request** | [**PracticeSiteOnboardingRequest**](PracticeSiteOnboardingRequest.md) | The details of the practice to onboard |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |

### Return type

[**PracticeSiteIdentityWithKeys**](PracticeSiteIdentityWithKeys.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## revoke_site_api_permissions

> <Array<PublicApiPermission>> revoke_site_api_permissions(site_identifier, account_identifier, opts)

Revoke API permissions

Removes the given permissions from the specified api account for the specified site. If the no permissions are provided, all permissions will be removed

### Examples

```ruby
require 'time'
require 'slipstream_client'
# setup authorization
SlipstreamClient.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SlipstreamClient::SitesApi.new
site_identifier = 'site_identifier_example' # String | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software)
account_identifier = '7a1b3c5d-9e8f-4a2b-6c7d-8e9f0a1b2c3d' # String | The id of the integration account that you want to view / change permissions for. This is the same as the `AccountIdentifier` in the Public API.
opts = {
  x_practice_management_software: SlipstreamClient::PracticeManagementSoftware::TESTING, # PracticeManagementSoftware | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.** 
  public_api_permission: [SlipstreamClient::PublicApiPermission::PATIENTS_READ] # Array<PublicApiPermission> | The permissions to remove from the specified api account for the specified site
}

begin
  # Revoke API permissions
  result = api_instance.revoke_site_api_permissions(site_identifier, account_identifier, opts)
  p result
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->revoke_site_api_permissions: #{e}"
end
```

#### Using the revoke_site_api_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PublicApiPermission>>, Integer, Hash)> revoke_site_api_permissions_with_http_info(site_identifier, account_identifier, opts)

```ruby
begin
  # Revoke API permissions
  data, status_code, headers = api_instance.revoke_site_api_permissions_with_http_info(site_identifier, account_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PublicApiPermission>>
rescue SlipstreamClient::ApiError => e
  puts "Error when calling SitesApi->revoke_site_api_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_identifier** | **String** | The PMS-specific id that uniquely identifies a physical practice site (What you call the site in your software) |  |
| **account_identifier** | **String** | The id of the integration account that you want to view / change permissions for. This is the same as the &#x60;AccountIdentifier&#x60; in the Public API. |  |
| **x_practice_management_software** | [**PracticeManagementSoftware**](.md) | The intended practice management software for the request, used to disambiguate a pms specific identifier when you have access to multiple PMS systems.   **Omit this if you only have access to a single PMS.**  | [optional] |
| **public_api_permission** | [**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md) | The permissions to remove from the specified api account for the specified site | [optional] |

### Return type

[**Array&lt;PublicApiPermission&gt;**](PublicApiPermission.md)

### Authorization

[azure_auth](../README.md#azure_auth), [azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

