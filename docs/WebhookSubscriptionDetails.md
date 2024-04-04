# OpenapiClient::WebhookSubscriptionDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI to deliver the events to |  |
| **headers** | **Array&lt;String&gt;** | The headers that should be sent with the POST request to deliver the event | [optional] |
| **event_types** | **Array&lt;String&gt;** | The types of events to subscribe to. If omitted, all events will be delivered | [optional] |
| **labels** | **Array&lt;String&gt;** | The labels to apply to the subscription | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookSubscriptionDetails.new(
  uri: https://mywebhookreceiver.com/endpoint,
  headers: null,
  event_types: null,
  labels: null
)
```

