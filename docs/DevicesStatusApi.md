# ArtikCloud::DevicesStatusApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_device_status**](DevicesStatusApi.md#get_device_status) | **GET** /devices/{deviceId}/status | Get Device Status
[**get_devices_status**](DevicesStatusApi.md#get_devices_status) | **GET** /devices/status | Get Devices Status
[**put_device_status**](DevicesStatusApi.md#put_device_status) | **PUT** /devices/{deviceId}/status | Update Device Status


# **get_device_status**
> DeviceStatus get_device_status(device_id, opts)

Get Device Status

Get Device Status

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesStatusApi.new

device_id = "device_id_example" # String | Device ID.

opts = { 
  include_snapshot: true, # BOOLEAN | Include device snapshot into the response
  include_snapshot_timestamp: true # BOOLEAN | Include device snapshot timestamp into the response
}

begin
  #Get Device Status
  result = api_instance.get_device_status(device_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesStatusApi->get_device_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **include_snapshot** | **BOOLEAN**| Include device snapshot into the response | [optional] 
 **include_snapshot_timestamp** | **BOOLEAN**| Include device snapshot timestamp into the response | [optional] 

### Return type

[**DeviceStatus**](DeviceStatus.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_devices_status**
> DeviceStatusBatch get_devices_status(dids, opts)

Get Devices Status

Get Devices Status

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesStatusApi.new

dids = "dids_example" # String | List of device ids (comma-separated) for which the statuses are requested.

opts = { 
  include_snapshot: true, # BOOLEAN | Include device snapshot into the response
  include_snapshot_timestamp: true # BOOLEAN | Include device snapshot timestamp into the response
}

begin
  #Get Devices Status
  result = api_instance.get_devices_status(dids, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesStatusApi->get_devices_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dids** | **String**| List of device ids (comma-separated) for which the statuses are requested. | 
 **include_snapshot** | **BOOLEAN**| Include device snapshot into the response | [optional] 
 **include_snapshot_timestamp** | **BOOLEAN**| Include device snapshot timestamp into the response | [optional] 

### Return type

[**DeviceStatusBatch**](DeviceStatusBatch.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_device_status**
> DeviceStatus put_device_status(device_id, opts)

Update Device Status

Update Device Status

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesStatusApi.new

device_id = "device_id_example" # String | Device ID.

opts = { 
  body: ArtikCloud::DeviceStatusPut.new # DeviceStatusPut | Body
}

begin
  #Update Device Status
  result = api_instance.put_device_status(device_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesStatusApi->put_device_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 
 **body** | [**DeviceStatusPut**](DeviceStatusPut.md)| Body | [optional] 

### Return type

[**DeviceStatus**](DeviceStatus.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



