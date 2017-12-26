# ArtikCloud::WhitelistingApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_vdid**](WhitelistingApi.md#delete_vdid) | **DELETE** /devicetypes/{dtid}/whitelist/{vdid} | Delete a vdid from the devicetype whitelist.
[**delete_whitelist_certificate**](WhitelistingApi.md#delete_whitelist_certificate) | **DELETE** /devicetypes/{dtid}/whitelist/certificates/{cid} | Delete a whitelist certificate associated with a devicetype.
[**enable_whitelist**](WhitelistingApi.md#enable_whitelist) | **PUT** /devicetypes/:dtid/whitelist/enable | Enable or disble whitelist feature of a device type
[**get_rejected_row_list**](WhitelistingApi.md#get_rejected_row_list) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/rejectedRows | Get the list of rejected rows for an uploaded CSV file.
[**get_upload_status**](WhitelistingApi.md#get_upload_status) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/status | Get the status of a uploaded CSV file.
[**get_whitelist**](WhitelistingApi.md#get_whitelist) | **GET** /devicetypes/{dtid}/whitelist | Get whitelisted vdids of a device type.
[**get_whitelist_certificate**](WhitelistingApi.md#get_whitelist_certificate) | **GET** /devicetypes/{dtid}/whitelist/certificates | Get whitelist certificate of device type.
[**get_whitelist_status**](WhitelistingApi.md#get_whitelist_status) | **GET** /devicetypes/{dtid}/whitelist/status | Get the status of whitelist feature (enabled/disabled) of a device type.
[**upload_csv**](WhitelistingApi.md#upload_csv) | **POST** /devicetypes/{dtid}/whitelist | Upload a CSV file related to the Device Type.


# **delete_vdid**
> WhitelistEnvelope delete_vdid(dtid, vdid)

Delete a vdid from the devicetype whitelist.

Delete a vdid from the devicetype whitelist.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.

vdid = "vdid_example" # String | Vendor Device ID.


begin
  #Delete a vdid from the devicetype whitelist.
  result = api_instance.delete_vdid(dtid, vdid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->delete_vdid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **vdid** | **String**| Vendor Device ID. | 

### Return type

[**WhitelistEnvelope**](WhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_whitelist_certificate**
> WhitelistEnvelope delete_whitelist_certificate(dtid, cid)

Delete a whitelist certificate associated with a devicetype.

Delete a whitelist certificate associated with a devicetype.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.

cid = "cid_example" # String | Certificate ID.


begin
  #Delete a whitelist certificate associated with a devicetype.
  result = api_instance.delete_whitelist_certificate(dtid, cid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->delete_whitelist_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **cid** | **String**| Certificate ID. | 

### Return type

[**WhitelistEnvelope**](WhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_whitelist**
> WhitelistEnvelope enable_whitelist(dtid, device_type_update_info)

Enable or disble whitelist feature of a device type

Enable or disble whitelist feature of a device type

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.

device_type_update_info = ArtikCloud::DeviceTypeUpdateInput.new # DeviceTypeUpdateInput | Device type update input.


begin
  #Enable or disble whitelist feature of a device type
  result = api_instance.enable_whitelist(dtid, device_type_update_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->enable_whitelist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **device_type_update_info** | [**DeviceTypeUpdateInput**](DeviceTypeUpdateInput.md)| Device type update input. | 

### Return type

[**WhitelistEnvelope**](WhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_rejected_row_list**
> RejectedCSVRowsEnvelope get_rejected_row_list(dtid, upload_id, opts)

Get the list of rejected rows for an uploaded CSV file.

Get the list of rejected rows for an uploaded CSV file.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device type id related to the uploaded CSV file.

upload_id = "upload_id_example" # String | Upload id related to the uploaded CSV file.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56 # Integer | Result starting offset.
}

begin
  #Get the list of rejected rows for an uploaded CSV file.
  result = api_instance.get_rejected_row_list(dtid, upload_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->get_rejected_row_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device type id related to the uploaded CSV file. | 
 **upload_id** | **String**| Upload id related to the uploaded CSV file. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 

### Return type

[**RejectedCSVRowsEnvelope**](RejectedCSVRowsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_upload_status**
> UploadStatusEnvelope get_upload_status(dtid, upload_id)

Get the status of a uploaded CSV file.

Get the status of a uploaded CSV file.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device type id related to the uploaded CSV file.

upload_id = "upload_id_example" # String | Upload id related to the uploaded CSV file.


begin
  #Get the status of a uploaded CSV file.
  result = api_instance.get_upload_status(dtid, upload_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->get_upload_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device type id related to the uploaded CSV file. | 
 **upload_id** | **String**| Upload id related to the uploaded CSV file. | 

### Return type

[**UploadStatusEnvelope**](UploadStatusEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_whitelist**
> WhitelistResultEnvelope get_whitelist(dtid, opts)

Get whitelisted vdids of a device type.

Get whitelisted vdids of a device type.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56 # Integer | Result starting offset.
}

begin
  #Get whitelisted vdids of a device type.
  result = api_instance.get_whitelist(dtid, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->get_whitelist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 

### Return type

[**WhitelistResultEnvelope**](WhitelistResultEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_whitelist_certificate**
> CertificateEnvelope get_whitelist_certificate(dtid)

Get whitelist certificate of device type.

Get whitelist certificate of device type.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.


begin
  #Get whitelist certificate of device type.
  result = api_instance.get_whitelist_certificate(dtid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->get_whitelist_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 

### Return type

[**CertificateEnvelope**](CertificateEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_whitelist_status**
> WhitelistEnvelope get_whitelist_status(dtid)

Get the status of whitelist feature (enabled/disabled) of a device type.

Get the status of whitelist feature (enabled/disabled) of a device type.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.


begin
  #Get the status of whitelist feature (enabled/disabled) of a device type.
  result = api_instance.get_whitelist_status(dtid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->get_whitelist_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 

### Return type

[**WhitelistEnvelope**](WhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_csv**
> UploadIdEnvelope upload_csv(dtid, file)

Upload a CSV file related to the Device Type.

Upload a CSV file related to the Device Type.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::WhitelistingApi.new

dtid = "dtid_example" # String | Device Type ID.

file = "B" # String | Device Type ID.


begin
  #Upload a CSV file related to the Device Type.
  result = api_instance.upload_csv(dtid, file)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling WhitelistingApi->upload_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **file** | **String**| Device Type ID. | 

### Return type

[**UploadIdEnvelope**](UploadIdEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



