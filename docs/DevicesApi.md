# ArtikCloud::DevicesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_device**](DevicesApi.md#add_device) | **POST** /devices | Add Device
[**delete_device**](DevicesApi.md#delete_device) | **DELETE** /devices/{deviceId} | Delete Device
[**delete_device_token**](DevicesApi.md#delete_device_token) | **DELETE** /devices/{deviceId}/tokens | Delete Device Token
[**get_device**](DevicesApi.md#get_device) | **GET** /devices/{deviceId} | Get Device
[**get_device_presence**](DevicesApi.md#get_device_presence) | **GET** /devices/{deviceId}/presence | Get device presence information
[**get_device_token**](DevicesApi.md#get_device_token) | **GET** /devices/{deviceId}/tokens | Get Device Token
[**update_device**](DevicesApi.md#update_device) | **PUT** /devices/{deviceId} | Update Device
[**update_device_token**](DevicesApi.md#update_device_token) | **PUT** /devices/{deviceId}/tokens | Update Device Token


# **add_device**
> DeviceEnvelope add_device(device)

Add Device

Create a device

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device = ArtikCloud::Device.new # Device | Device to be added to the user


begin
  #Add Device
  result = api_instance.add_device(device)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->add_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**Device**](Device.md)| Device to be added to the user | 

### Return type

[**DeviceEnvelope**](DeviceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device**
> DeviceEnvelope delete_device(device_id)

Delete Device

Deletes a device

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId


begin
  #Delete Device
  result = api_instance.delete_device(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->delete_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 

### Return type

[**DeviceEnvelope**](DeviceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_device_token**
> DeviceTokenEnvelope delete_device_token(device_id)

Delete Device Token

Deletes a device's token

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId


begin
  #Delete Device Token
  result = api_instance.delete_device_token(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->delete_device_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 

### Return type

[**DeviceTokenEnvelope**](DeviceTokenEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device**
> DeviceEnvelope get_device(device_id)

Get Device

Retrieves a device

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId


begin
  #Get Device
  result = api_instance.get_device(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->get_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 

### Return type

[**DeviceEnvelope**](DeviceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_presence**
> PresenceEnvelope get_device_presence(device_id)

Get device presence information

Return the presence status of the given device along with the time it was last seen

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | Device ID.


begin
  #Get device presence information
  result = api_instance.get_device_presence(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->get_device_presence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 

### Return type

[**PresenceEnvelope**](PresenceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_token**
> DeviceTokenEnvelope get_device_token(device_id)

Get Device Token

Retrieves a device's token

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId


begin
  #Get Device Token
  result = api_instance.get_device_token(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->get_device_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 

### Return type

[**DeviceTokenEnvelope**](DeviceTokenEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_device**
> DeviceEnvelope update_device(device_id, device)

Update Device

Updates a device

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId

device = ArtikCloud::Device.new # Device | Device to be updated


begin
  #Update Device
  result = api_instance.update_device(device_id, device)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->update_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 
 **device** | [**Device**](Device.md)| Device to be updated | 

### Return type

[**DeviceEnvelope**](DeviceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_device_token**
> DeviceTokenEnvelope update_device_token(device_id)

Update Device Token

Updates a device's token

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesApi.new

device_id = "device_id_example" # String | deviceId


begin
  #Update Device Token
  result = api_instance.update_device_token(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesApi->update_device_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| deviceId | 

### Return type

[**DeviceTokenEnvelope**](DeviceTokenEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



