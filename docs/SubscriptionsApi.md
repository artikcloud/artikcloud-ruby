# ArtikCloud::SubscriptionsApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create Subscription
[**delete_subscription**](SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{subId} | Delete Subscription
[**get_all_subscriptions**](SubscriptionsApi.md#get_all_subscriptions) | **GET** /subscriptions | Get All Subscriptions
[**get_messages**](SubscriptionsApi.md#get_messages) | **GET** /notifications/{notifId}/messages | Get Messages
[**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{subId} | Get Subscription
[**validate_subscription**](SubscriptionsApi.md#validate_subscription) | **POST** /subscriptions/{subId}/validate | Validate Subscription


# **create_subscription**
> SubscriptionEnvelope create_subscription(subscription_info)

Create Subscription

Create Subscription

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

subscription_info = ArtikCloud::SubscriptionInfo.new # SubscriptionInfo | Subscription details


begin
  #Create Subscription
  result = api_instance.create_subscription(subscription_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_info** | [**SubscriptionInfo**](SubscriptionInfo.md)| Subscription details | 

### Return type

[**SubscriptionEnvelope**](SubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_subscription**
> SubscriptionEnvelope delete_subscription(sub_id)

Delete Subscription

Delete Subscription

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

sub_id = "sub_id_example" # String | Subscription ID.


begin
  #Delete Subscription
  result = api_instance.delete_subscription(sub_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_id** | **String**| Subscription ID. | 

### Return type

[**SubscriptionEnvelope**](SubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_subscriptions**
> SubscriptionsEnvelope get_all_subscriptions(opts)

Get All Subscriptions

Get All Subscriptions

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

opts = { 
  uid: "uid_example", # String | User ID
  offset: 56, # Integer | Offset for pagination.
  count: 56 # Integer | Desired count of items in the result set.
}

begin
  #Get All Subscriptions
  result = api_instance.get_all_subscriptions(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_all_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| User ID | [optional] 
 **offset** | **Integer**| Offset for pagination. | [optional] 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 

### Return type

[**SubscriptionsEnvelope**](SubscriptionsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_messages**
> NotifMessagesResponse get_messages(notif_id, opts)

Get Messages

Get Messages

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

notif_id = "notif_id_example" # String | Notification ID.

opts = { 
  offset: 56, # Integer | Offset for pagination.
  count: 56, # Integer | Desired count of items in the result set.
  order: "order_example" # String | Sort order of results by ts. Either 'asc' or 'desc'.
}

begin
  #Get Messages
  result = api_instance.get_messages(notif_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notif_id** | **String**| Notification ID. | 
 **offset** | **Integer**| Offset for pagination. | [optional] 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 
 **order** | **String**| Sort order of results by ts. Either &#39;asc&#39; or &#39;desc&#39;. | [optional] 

### Return type

[**NotifMessagesResponse**](NotifMessagesResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription**
> SubscriptionEnvelope get_subscription(sub_id)

Get Subscription

Get Subscription

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

sub_id = "sub_id_example" # String | Subscription ID.


begin
  #Get Subscription
  result = api_instance.get_subscription(sub_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_id** | **String**| Subscription ID. | 

### Return type

[**SubscriptionEnvelope**](SubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validate_subscription**
> SubscriptionEnvelope validate_subscription(sub_id, validation_callback_request)

Validate Subscription

Validate Subscription

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::SubscriptionsApi.new

sub_id = "sub_id_example" # String | Subscription ID.

validation_callback_request = ArtikCloud::ValidationCallbackInfo.new # ValidationCallbackInfo | Subscription validation callback request


begin
  #Validate Subscription
  result = api_instance.validate_subscription(sub_id, validation_callback_request)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->validate_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_id** | **String**| Subscription ID. | 
 **validation_callback_request** | [**ValidationCallbackInfo**](ValidationCallbackInfo.md)| Subscription validation callback request | 

### Return type

[**SubscriptionEnvelope**](SubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



