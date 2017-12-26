# ArtikCloud::DevicesSharesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_share_for_device**](DevicesSharesApi.md#create_share_for_device) | **POST** /devices/{deviceId}/shares | Share a device 
[**delete_sharing_for_device**](DevicesSharesApi.md#delete_sharing_for_device) | **DELETE** /devices/{deviceId}/shares/{shareId} | Delete specific share of the given device id
[**get_all_shares_for_device**](DevicesSharesApi.md#get_all_shares_for_device) | **GET** /devices/{deviceId}/shares | List all shares for the given device id
[**get_sharing_for_device**](DevicesSharesApi.md#get_sharing_for_device) | **GET** /devices/{deviceId}/shares/{shareId} | Get specific share of the given device id


# **create_share_for_device**
> DeviceSharingId create_share_for_device(device_id, device_share_info)

Share a device 

Share a device 

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesSharesApi.new

device_id = "device_id_example" # String | Device ID.

device_share_info = ArtikCloud::DeviceShareInfo.new # DeviceShareInfo | Device object that needs to be added


begin
  #Share a device 
  result = api_instance.create_share_for_device(device_id, device_share_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesSharesApi->create_share_for_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **device_share_info** | [**DeviceShareInfo**](DeviceShareInfo.md)| Device object that needs to be added | 

### Return type

[**DeviceSharingId**](DeviceSharingId.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_sharing_for_device**
> DeviceSharingId delete_sharing_for_device(device_id, share_id)

Delete specific share of the given device id

Delete specific share of the given device id

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesSharesApi.new

device_id = "device_id_example" # String | Device ID.

share_id = "share_id_example" # String | Share ID.


begin
  #Delete specific share of the given device id
  result = api_instance.delete_sharing_for_device(device_id, share_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesSharesApi->delete_sharing_for_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **share_id** | **String**| Share ID. | 

### Return type

[**DeviceSharingId**](DeviceSharingId.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_shares_for_device**
> DeviceSharingEnvelope get_all_shares_for_device(device_id, opts)

List all shares for the given device id

List all shares for the given device id

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesSharesApi.new

device_id = "device_id_example" # String | Device ID.

opts = { 
  count: 56, # Integer | Desired count of items in the result set.
  offset: 56 # Integer | Offset for pagination.
}

begin
  #List all shares for the given device id
  result = api_instance.get_all_shares_for_device(device_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesSharesApi->get_all_shares_for_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 
 **offset** | **Integer**| Offset for pagination. | [optional] 

### Return type

[**DeviceSharingEnvelope**](DeviceSharingEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sharing_for_device**
> DeviceSharing get_sharing_for_device(device_id, share_id)

Get specific share of the given device id

Get specific share of the given device id

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesSharesApi.new

device_id = "device_id_example" # String | Device ID.

share_id = "share_id_example" # String | Share ID.


begin
  #Get specific share of the given device id
  result = api_instance.get_sharing_for_device(device_id, share_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesSharesApi->get_sharing_for_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **share_id** | **String**| Share ID. | 

### Return type

[**DeviceSharing**](DeviceSharing.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



