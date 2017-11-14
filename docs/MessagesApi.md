# ArtikCloud::MessagesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_aggregates_histogram**](MessagesApi.md#get_aggregates_histogram) | **GET** /messages/analytics/histogram | Get Normalized Message Histogram
[**get_field_presence**](MessagesApi.md#get_field_presence) | **GET** /messages/presence | Get normalized message presence
[**get_last_normalized_messages**](MessagesApi.md#get_last_normalized_messages) | **GET** /messages/last | Get Last Normalized Message
[**get_message_aggregates**](MessagesApi.md#get_message_aggregates) | **GET** /messages/analytics/aggregates | Get Normalized Message Aggregates
[**get_message_snapshots**](MessagesApi.md#get_message_snapshots) | **GET** /messages/snapshots | Get Message Snapshots
[**get_normalized_actions**](MessagesApi.md#get_normalized_actions) | **GET** /actions | Get Normalized Actions
[**get_normalized_messages**](MessagesApi.md#get_normalized_messages) | **GET** /messages | Get Normalized Messages
[**send_actions**](MessagesApi.md#send_actions) | **POST** /actions | Send Actions
[**send_message**](MessagesApi.md#send_message) | **POST** /messages | Send Message


# **get_aggregates_histogram**
> AggregatesHistogramResponse get_aggregates_histogram(start_date, end_date, opts)

Get Normalized Message Histogram

Get Histogram on normalized messages.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

start_date = 789 # Integer | Timestamp of earliest message (in milliseconds since epoch).

end_date = 789 # Integer | Timestamp of latest message (in milliseconds since epoch).

opts = { 
  sdid: "sdid_example", # String | Source device ID of the messages being searched.
  field: "field_example", # String | Message field being queried for building histogram.
  interval: "interval_example" # String | Interval of time for building histogram blocks. (Valid values: minute, hour, day, month, year)
}

begin
  #Get Normalized Message Histogram
  result = api_instance.get_aggregates_histogram(start_date, end_date, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_aggregates_histogram: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| Timestamp of earliest message (in milliseconds since epoch). | 
 **end_date** | **Integer**| Timestamp of latest message (in milliseconds since epoch). | 
 **sdid** | **String**| Source device ID of the messages being searched. | [optional] 
 **field** | **String**| Message field being queried for building histogram. | [optional] 
 **interval** | **String**| Interval of time for building histogram blocks. (Valid values: minute, hour, day, month, year) | [optional] 

### Return type

[**AggregatesHistogramResponse**](AggregatesHistogramResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_field_presence**
> FieldPresenceEnvelope get_field_presence(start_date, end_date, interval, opts)

Get normalized message presence

Get normalized message presence.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

start_date = 789 # Integer | startDate

end_date = 789 # Integer | endDate

interval = "interval_example" # String | String representing grouping interval. One of: 'minute' (1 hour limit), 'hour' (1 day limit), 'day' (31 days limit), 'month' (1 year limit), or 'year' (10 years limit).

opts = { 
  sdid: "sdid_example", # String | Source device ID of the messages being searched.
  field_presence: "field_presence_example" # String | String representing a field from the specified device ID.
}

begin
  #Get normalized message presence
  result = api_instance.get_field_presence(start_date, end_date, interval, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_field_presence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| startDate | 
 **end_date** | **Integer**| endDate | 
 **interval** | **String**| String representing grouping interval. One of: &#39;minute&#39; (1 hour limit), &#39;hour&#39; (1 day limit), &#39;day&#39; (31 days limit), &#39;month&#39; (1 year limit), or &#39;year&#39; (10 years limit). | 
 **sdid** | **String**| Source device ID of the messages being searched. | [optional] 
 **field_presence** | **String**| String representing a field from the specified device ID. | [optional] 

### Return type

[**FieldPresenceEnvelope**](FieldPresenceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_last_normalized_messages**
> NormalizedMessagesEnvelope get_last_normalized_messages(opts)

Get Last Normalized Message

Get last messages normalized.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

opts = { 
  count: 56, # Integer | Number of items to return per query.
  sdids: "sdids_example", # String | Comma separated list of source device IDs (minimum: 1).
  field_presence: "field_presence_example" # String | String representing a field from the specified device ID.
}

begin
  #Get Last Normalized Message
  result = api_instance.get_last_normalized_messages(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_last_normalized_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| Number of items to return per query. | [optional] 
 **sdids** | **String**| Comma separated list of source device IDs (minimum: 1). | [optional] 
 **field_presence** | **String**| String representing a field from the specified device ID. | [optional] 

### Return type

[**NormalizedMessagesEnvelope**](NormalizedMessagesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_message_aggregates**
> AggregatesResponse get_message_aggregates(sdid, field, start_date, end_date)

Get Normalized Message Aggregates

Get Aggregates on normalized messages.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

sdid = "sdid_example" # String | Source device ID of the messages being searched.

field = "field_example" # String | Message field being queried for aggregates.

start_date = 789 # Integer | Timestamp of earliest message (in milliseconds since epoch).

end_date = 789 # Integer | Timestamp of latest message (in milliseconds since epoch).


begin
  #Get Normalized Message Aggregates
  result = api_instance.get_message_aggregates(sdid, field, start_date, end_date)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_message_aggregates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sdid** | **String**| Source device ID of the messages being searched. | 
 **field** | **String**| Message field being queried for aggregates. | 
 **start_date** | **Integer**| Timestamp of earliest message (in milliseconds since epoch). | 
 **end_date** | **Integer**| Timestamp of latest message (in milliseconds since epoch). | 

### Return type

[**AggregatesResponse**](AggregatesResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_message_snapshots**
> SnapshotResponses get_message_snapshots(sdids, opts)

Get Message Snapshots

Get message snapshots.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

sdids = "sdids_example" # String | Device IDs for which the snapshots are requested. Max 100 device ids per call.

opts = { 
  include_timestamp: true # BOOLEAN | Indicates whether to return timestamps of the last update for each field.
}

begin
  #Get Message Snapshots
  result = api_instance.get_message_snapshots(sdids, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_message_snapshots: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sdids** | **String**| Device IDs for which the snapshots are requested. Max 100 device ids per call. | 
 **include_timestamp** | **BOOLEAN**| Indicates whether to return timestamps of the last update for each field. | [optional] 

### Return type

[**SnapshotResponses**](SnapshotResponses.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_normalized_actions**
> NormalizedActionsEnvelope get_normalized_actions(opts)

Get Normalized Actions

Get the actions normalized

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

opts = { 
  uid: "uid_example", # String | User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
  ddid: "ddid_example", # String | Destination device ID of the actions being searched.
  mid: "mid_example", # String | The message ID being searched.
  offset: "offset_example", # String | A string that represents the starting item, should be the value of 'next' field received in the last response. (required for pagination)
  count: 56, # Integer | count
  start_date: 789, # Integer | startDate
  end_date: 789, # Integer | endDate
  order: "order_example" # String | Desired sort order: 'asc' or 'desc'
}

begin
  #Get Normalized Actions
  result = api_instance.get_normalized_actions(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_normalized_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. | [optional] 
 **ddid** | **String**| Destination device ID of the actions being searched. | [optional] 
 **mid** | **String**| The message ID being searched. | [optional] 
 **offset** | **String**| A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination) | [optional] 
 **count** | **Integer**| count | [optional] 
 **start_date** | **Integer**| startDate | [optional] 
 **end_date** | **Integer**| endDate | [optional] 
 **order** | **String**| Desired sort order: &#39;asc&#39; or &#39;desc&#39; | [optional] 

### Return type

[**NormalizedActionsEnvelope**](NormalizedActionsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_normalized_messages**
> NormalizedMessagesEnvelope get_normalized_messages(opts)

Get Normalized Messages

Get the messages normalized

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

opts = { 
  uid: "uid_example", # String | User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
  sdid: "sdid_example", # String | Source device ID of the messages being searched.
  mid: "mid_example", # String | The message ID being searched.
  field_presence: "field_presence_example", # String | String representing a field from the specified device ID.
  filter: "filter_example", # String | Filter.
  offset: "offset_example", # String | A string that represents the starting item, should be the value of 'next' field received in the last response. (required for pagination)
  count: 56, # Integer | count
  start_date: 789, # Integer | startDate
  end_date: 789, # Integer | endDate
  order: "order_example" # String | Desired sort order: 'asc' or 'desc'
}

begin
  #Get Normalized Messages
  result = api_instance.get_normalized_messages(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->get_normalized_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. | [optional] 
 **sdid** | **String**| Source device ID of the messages being searched. | [optional] 
 **mid** | **String**| The message ID being searched. | [optional] 
 **field_presence** | **String**| String representing a field from the specified device ID. | [optional] 
 **filter** | **String**| Filter. | [optional] 
 **offset** | **String**| A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination) | [optional] 
 **count** | **Integer**| count | [optional] 
 **start_date** | **Integer**| startDate | [optional] 
 **end_date** | **Integer**| endDate | [optional] 
 **order** | **String**| Desired sort order: &#39;asc&#39; or &#39;desc&#39; | [optional] 

### Return type

[**NormalizedMessagesEnvelope**](NormalizedMessagesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_actions**
> MessageIDEnvelope send_actions(data)

Send Actions

Send Actions

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

data = ArtikCloud::Actions.new # Actions | Actions that are passed in the body


begin
  #Send Actions
  result = api_instance.send_actions(data)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->send_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Actions**](Actions.md)| Actions that are passed in the body | 

### Return type

[**MessageIDEnvelope**](MessageIDEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_message**
> MessageIDEnvelope send_message(data)

Send Message

Send a message

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MessagesApi.new

data = ArtikCloud::Message.new # Message | Message object that is passed in the body


begin
  #Send Message
  result = api_instance.send_message(data)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MessagesApi->send_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Message**](Message.md)| Message object that is passed in the body | 

### Return type

[**MessageIDEnvelope**](MessageIDEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



