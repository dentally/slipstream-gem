# SlipstreamClient::CloudEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **specversion** | **String** | [The version of the CloudEvents specification which the event uses](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#specversion) |  |
| **id** | **String** | [Identifies the event. Producers MUST ensure that source + id is unique for each distinct event.](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#id) | [optional] |
| **source** | **String** | [A URI identifying the source of the event](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) |  |
| **subject** | **String** | [Describes the subject of the event in the context of the event producer (identified by source)](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) | [optional] |
| **type** | **String** | [The identifier for the type of event](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#type) |  |
| **time** | **Time** | [Timestamp when the event occurred](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#time) | [optional] |
| **datacontenttype** | **String** | [The content type of the data field](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#datacontenttype). Assume application/json if missing | [optional] |
| **dataschema** | **String** | [Identifies the schema that data adheres to](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#datacontenttype) | [optional] |
| **data** | **Object** | [The event payload formatted as a json string](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#event-data) | [optional] |
| **siteslug** | **String** | The slug of the practice site the event pertains to. | [optional] |
| **expirytime** | **Time** | [The deadline for the event to be delivered. Discarded if not delivered by this time.](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/expirytime.md) | [optional] |
| **intendeddeliverytime** | **Time** | The time the event is intended to be delivered at. Not delivered before this time. | [optional] |
| **traceparent** | **String** | [The correlation ID for correlating events](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/distributed-tracing.md) | [optional] |
| **priority** | **Integer** | Priority of the event for time-sensitive processing. | [optional] |
| **organisationslug** | **String** | The slug representing the organisation the event pertains to. | [optional] |
| **billingorganisationslug** | **String** | The slug for the organisation to be billed for the event. | [optional] |
| **product** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  | [optional] |
| **dataref** | **String** | [A URI using the valet-key pattern to retrieve full data](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/dataref.md) | [optional] |

## Example

```ruby
require 'slipstream_client'

instance = SlipstreamClient::CloudEvent.new(
  specversion: null,
  id: null,
  source: null,
  subject: null,
  type: Slipstream.UrlShortener.UrlCreated,
  time: null,
  datacontenttype: application/json,
  dataschema: null,
  data: null,
  siteslug: hGyKj,
  expirytime: 2021-04-24T18:25:43.511Z,
  intendeddeliverytime: 2021-04-23T20:25:43.511Z,
  traceparent: 00-0af7651916cd43dd8448eb211c80319c-b7ad6b7169203331-01,
  priority: 1,
  organisationslug: fgDrG,
  billingorganisationslug: fgDrG,
  product: null,
  dataref: /some/dataref
)
```

