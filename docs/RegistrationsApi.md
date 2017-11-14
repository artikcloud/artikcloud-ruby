# ArtikCloud::RegistrationsApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_user**](RegistrationsApi.md#confirm_user) | **PUT** /devices/registrations/pin | Confirm User
[**get_request_status_for_user**](RegistrationsApi.md#get_request_status_for_user) | **GET** /devices/registrations/{requestId}/status | Get Request Status For User
[**unregister_device**](RegistrationsApi.md#unregister_device) | **DELETE** /devices/{deviceId}/registrations | Unregister Device


# **confirm_user**
> DeviceRegConfirmUserResponseEnvelope confirm_user(registration_info)

Confirm User

This call updates the registration request issued earlier by associating it with an authenticated user and captures all additional information required to add a new device.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RegistrationsApi.new

registration_info = ArtikCloud::DeviceRegConfirmUserRequest.new # DeviceRegConfirmUserRequest | Device Registration information.


begin
  #Confirm User
  result = api_instance.confirm_user(registration_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RegistrationsApi->confirm_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_info** | [**DeviceRegConfirmUserRequest**](DeviceRegConfirmUserRequest.md)| Device Registration information. | 

### Return type

[**DeviceRegConfirmUserResponseEnvelope**](DeviceRegConfirmUserResponseEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_request_status_for_user**
> DeviceRegStatusResponseEnvelope get_request_status_for_user(request_id)

Get Request Status For User

This call checks the status of the request so users can poll and know when registration is complete.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RegistrationsApi.new

request_id = "request_id_example" # String | Request ID.


begin
  #Get Request Status For User
  result = api_instance.get_request_status_for_user(request_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RegistrationsApi->get_request_status_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Request ID. | 

### Return type

[**DeviceRegStatusResponseEnvelope**](DeviceRegStatusResponseEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unregister_device**
> UnregisterDeviceResponseEnvelope unregister_device(device_id)

Unregister Device

This call clears any associations from the secure device registration.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RegistrationsApi.new

device_id = "device_id_example" # String | Device ID.


begin
  #Unregister Device
  result = api_instance.unregister_device(device_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RegistrationsApi->unregister_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Device ID. | 

### Return type

[**UnregisterDeviceResponseEnvelope**](UnregisterDeviceResponseEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



