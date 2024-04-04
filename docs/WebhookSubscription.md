# SlipstreamClient::WebhookSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI to deliver the events to |  |
| **headers** | [**Array&lt;WebhookSubscriptionHeadersInner&gt;**](WebhookSubscriptionHeadersInner.md) | The headers that should be sent with the POST request to deliver the event | [optional] |
| **event_types** | **Array&lt;String&gt;** | The types of events to subscribe to. If omitted, all events will be delivered | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::WebhookSubscription.new(
  uri: https://mywebhookreceiver.com/endpoint,
  headers: null,
  event_types: null
)
```

