# SlipstreamClient::PaymentAccountOAuthConnect

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL to connect the site account with the payment provider to HSO&#39;s payment platform (Stripe Connect) | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::PaymentAccountOAuthConnect.new(
  url: https://connect.stripe.com/oauth/authorize?response_type&#x3D;code&amp;scope&#x3D;read_write&amp;client_id&#x3D;clientId&amp;redirect_uri&#x3D;stripeOAuthCallback&amp;state&#x3D;siteSlug
)
```

