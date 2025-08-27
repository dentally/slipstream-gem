# SlipstreamClient::CloudEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **specversion** | **String** | [The version of the CloudEvents specification which the event uses](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#specversion) |  |
| **id** | **String** | [Identifies the event. Producers MUST ensure that source + id is unique for each distinct event.](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#id) |  |
| **source** | **String** | [A URI identifying the source of the event](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) |  |
| **subject** | **String** | [Describes the subject of the event in the context of the event producer (identified by source)](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#subject) | [optional] |
| **type** | **String** | [The identifier for the type of event](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#type) |  |
| **time** | **Time** | [Timestamp when the event occurred](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#time) | [optional] |
| **datacontenttype** | **String** | [The content type of the data field](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#datacontenttype). Assume application/slipstreamevent+json if missing | [optional] |
| **dataschema** | **String** | [Identifies the schema that data adheres to](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#dataschema) | [optional] |
| **data** | **Object** | [The event payload formatted as a JSON object](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#event-data) | [optional] |
| **siteslug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **expirytime** | **Time** | [The deadline for the event to be delivered. Discarded if not delivered by this time.](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/expirytime.md) | [optional] |
| **intendeddeliverytime** | **Time** | The time the event is intended to be delivered at. Not delivered before this time. | [optional] |
| **traceparent** | **String** | [The correlation ID for correlating events](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/distributed-tracing.md) | [optional] |
| **tracestate** | **String** | [The trace state for the trace which caused this event to be raised](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/distributed-tracing.md) | [optional] |
| **priority** | **Integer** | Priority of the event for time-sensitive processing. | [optional] |
| **organisationslug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **billingorganisationslug** | **String** | A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org)) | [optional] |
| **product** | [**PracticeManagementSoftware**](PracticeManagementSoftware.md) |  | [optional] |
| **dataref** | **String** | [A URI using the valet-key pattern to retrieve full data](https://github.com/cloudevents/spec/blob/main/cloudevents/extensions/dataref.md) | [optional] |
| **visibility** | **Integer** | Controls the scope of an event&#39;s visibility. Possible values: - 0: Internal – The event can be subscribed to by other slipstream services, but is not available as a webhook (default when omitted) - 1: Public – The event is published as a webhook and can be subscribed to by authorized external systems - 2: WorkQueue – The event will be published to a work queue for later processing by the publishing service - 3: Private – The event is not published to a broker; it is only visible within the service publishing it and in telemetry For events from external systems, only Internal and Public are valid values.  | [optional][default to VISIBILITY::N0] |
| **billingsku** | **String** | Encodes a billable item and any relevant options into a billing SKU which decides what it should cost. | [optional] |
| **billingpax** | **Integer** | How many of the given SKU this item should be billed for. Assumed to be 1 if omitted. | [optional] |
| **pmsspecificid** | **String** | The PMS-specific id that uniquely identifies a physical practice | [optional] |

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
  datacontenttype: application/slipstreamevent+json,
  dataschema: null,
  data: null,
  siteslug: s8n6EzC,
  expirytime: 2021-04-24T18:25:43.511Z,
  intendeddeliverytime: 2021-04-23T20:25:43.511Z,
  traceparent: 00-0af7651916cd43dd8448eb211c80319c-b7ad6b7169203331-01,
  tracestate: null,
  priority: 1,
  organisationslug: s8n6EzC,
  billingorganisationslug: s8n6EzC,
  product: null,
  dataref: /some/dataref,
  visibility: null,
  billingsku: null,
  billingpax: 1,
  pmsspecificid: 04d2f2f0-8f1a-11eb-8dcd-0242ac130003
)
```

