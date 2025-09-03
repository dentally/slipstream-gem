# SlipstreamClient::CreatePaymentAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_url** | **String** | The &#x60;ReturnUrl&#x60; is used to redirect the user back to the application after they have completed the onboarding process. The page they return to should give the user feedback on the success or progress of the onboarding process.  | [optional] |
| **refresh_url** | **String** | The &#x60;RefreshUrl&#x60; is used to renew the onboarding link if is had already been used (it expires on first use) or the user has refreshed the page,  or their messaging client attempted to load the page to provide a preview, or the user hits the browser back/forward button.  | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CreatePaymentAccountRequest.new(
  return_url: null,
  refresh_url: null
)
```

