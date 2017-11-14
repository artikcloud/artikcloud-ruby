# ArtikCloud::UsersApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_properties**](UsersApi.md#create_user_properties) | **POST** /users/{userId}/properties | Create User Application Properties
[**delete_user_properties**](UsersApi.md#delete_user_properties) | **DELETE** /users/{userId}/properties | Delete User Application Properties
[**get_self**](UsersApi.md#get_self) | **GET** /users/self | Get Current User Profile
[**get_user_device_types**](UsersApi.md#get_user_device_types) | **GET** /users/{userId}/devicetypes | Get User Device Types
[**get_user_devices**](UsersApi.md#get_user_devices) | **GET** /users/{userId}/devices | Get User Devices
[**get_user_properties**](UsersApi.md#get_user_properties) | **GET** /users/{userId}/properties | Get User application properties
[**get_user_rules**](UsersApi.md#get_user_rules) | **GET** /users/{userId}/rules | Get User Rules
[**list_all_shares_for_user**](UsersApi.md#list_all_shares_for_user) | **GET** /users/{userId}/shares | Get User shares
[**update_user_properties**](UsersApi.md#update_user_properties) | **PUT** /users/{userId}/properties | Update User Application Properties


# **create_user_properties**
> PropertiesEnvelope create_user_properties(user_id, properties, opts)

Create User Application Properties

Create application properties for a user

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User Id

properties = ArtikCloud::AppProperties.new # AppProperties | Properties to be updated

opts = { 
  aid: "aid_example" # String | Application ID
}

begin
  #Create User Application Properties
  result = api_instance.create_user_properties(user_id, properties, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->create_user_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User Id | 
 **properties** | [**AppProperties**](AppProperties.md)| Properties to be updated | 
 **aid** | **String**| Application ID | [optional] 

### Return type

[**PropertiesEnvelope**](PropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user_properties**
> PropertiesEnvelope delete_user_properties(user_id, opts)

Delete User Application Properties

Deletes a user's application properties

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User Id

opts = { 
  aid: "aid_example" # String | Application ID
}

begin
  #Delete User Application Properties
  result = api_instance.delete_user_properties(user_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->delete_user_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User Id | 
 **aid** | **String**| Application ID | [optional] 

### Return type

[**PropertiesEnvelope**](PropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_self**
> UserEnvelope get_self

Get Current User Profile

Get's the current user's profile

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

begin
  #Get Current User Profile
  result = api_instance.get_self
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->get_self: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_device_types**
> DeviceTypesEnvelope get_user_device_types(user_id, opts)

Get User Device Types

Retrieve User's Device Types

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User ID.

opts = { 
  offset: 56, # Integer | Offset for pagination.
  count: 56, # Integer | Desired count of items in the result set
  include_shared: true # BOOLEAN | Optional. Boolean (true/false) - If false, only return the user's device types. If true, also return device types shared by other users.
}

begin
  #Get User Device Types
  result = api_instance.get_user_device_types(user_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->get_user_device_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User ID. | 
 **offset** | **Integer**| Offset for pagination. | [optional] 
 **count** | **Integer**| Desired count of items in the result set | [optional] 
 **include_shared** | **BOOLEAN**| Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users. | [optional] 

### Return type

[**DeviceTypesEnvelope**](DeviceTypesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_devices**
> DevicesEnvelope get_user_devices(user_id, opts)

Get User Devices

Retrieve User's Devices

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User ID

opts = { 
  offset: 56, # Integer | Offset for pagination.
  count: 56, # Integer | Desired count of items in the result set
  include_properties: true, # BOOLEAN | Optional. Boolean (true/false) - If false, only return the user's device types. If true, also return device types shared by other users.
  owner: "owner_example", # String | Return owned and/or shared devices. Default to ALL.
  include_share_info: true # BOOLEAN | Include share info
}

begin
  #Get User Devices
  result = api_instance.get_user_devices(user_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->get_user_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User ID | 
 **offset** | **Integer**| Offset for pagination. | [optional] 
 **count** | **Integer**| Desired count of items in the result set | [optional] 
 **include_properties** | **BOOLEAN**| Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users. | [optional] 
 **owner** | **String**| Return owned and/or shared devices. Default to ALL. | [optional] 
 **include_share_info** | **BOOLEAN**| Include share info | [optional] 

### Return type

[**DevicesEnvelope**](DevicesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_properties**
> PropertiesEnvelope get_user_properties(user_id, opts)

Get User application properties

Get application properties of a user

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User Id

opts = { 
  aid: "aid_example" # String | Application ID
}

begin
  #Get User application properties
  result = api_instance.get_user_properties(user_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->get_user_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User Id | 
 **aid** | **String**| Application ID | [optional] 

### Return type

[**PropertiesEnvelope**](PropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_rules**
> RulesEnvelope get_user_rules(user_id, opts)

Get User Rules

Retrieve User's Rules

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User ID.

opts = { 
  exclude_disabled: true, # BOOLEAN | Exclude disabled rules in the result.
  count: 56, # Integer | Desired count of items in the result set.
  offset: 56 # Integer | Offset for pagination.
}

begin
  #Get User Rules
  result = api_instance.get_user_rules(user_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->get_user_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User ID. | 
 **exclude_disabled** | **BOOLEAN**| Exclude disabled rules in the result. | [optional] 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 
 **offset** | **Integer**| Offset for pagination. | [optional] 

### Return type

[**RulesEnvelope**](RulesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_all_shares_for_user**
> DeviceSharingEnvelope list_all_shares_for_user(user_id, filter, opts)

Get User shares

Get User shares

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User ID.

filter = "filter_example" # String | filter

opts = { 
  count: 56, # Integer | Desired count of items in the result set.
  offset: 56 # Integer | Offset for pagination.
}

begin
  #Get User shares
  result = api_instance.list_all_shares_for_user(user_id, filter, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->list_all_shares_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User ID. | 
 **filter** | **String**| filter | 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 
 **offset** | **Integer**| Offset for pagination. | [optional] 

### Return type

[**DeviceSharingEnvelope**](DeviceSharingEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_user_properties**
> PropertiesEnvelope update_user_properties(user_id, properties, opts)

Update User Application Properties

Updates application properties of a user

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::UsersApi.new

user_id = "user_id_example" # String | User Id

properties = ArtikCloud::AppProperties.new # AppProperties | Properties to be updated

opts = { 
  aid: "aid_example" # String | Application ID
}

begin
  #Update User Application Properties
  result = api_instance.update_user_properties(user_id, properties, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling UsersApi->update_user_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| User Id | 
 **properties** | [**AppProperties**](AppProperties.md)| Properties to be updated | 
 **aid** | **String**| Application ID | [optional] 

### Return type

[**PropertiesEnvelope**](PropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



