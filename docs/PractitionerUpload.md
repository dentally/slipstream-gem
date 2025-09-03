# SlipstreamClient::PractitionerUpload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The PMS-specific identifier for the practitioner |  |
| **name** | **String** | The display name of the practitioner |  |
| **speciality** | **String** | The practitioner&#39;s speciality or qualification | [optional] |
| **photo_url** | **String** | URL to the practitioner&#39;s photo | [optional] |
| **provider_type** | [**ProviderType**](ProviderType.md) |  |  |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PractitionerUpload.new(
  external_id: DR-123,
  name: Dr. Jane Smith,
  speciality: General Dentistry,
  photo_url: https://example.com/photos/dr-smith.jpg,
  provider_type: null
)
```

