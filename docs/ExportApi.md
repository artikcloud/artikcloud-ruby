# ArtikCloud::ExportApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_request**](ExportApi.md#export_request) | **POST** /messages/export | Create Export Request
[**get_export_history**](ExportApi.md#get_export_history) | **GET** /messages/export/history | Get Export History
[**get_export_result**](ExportApi.md#get_export_result) | **GET** /messages/export/{exportId}/result | Get Export Result
[**get_export_status**](ExportApi.md#get_export_status) | **GET** /messages/export/{exportId}/status | Check Export Status


# **export_request**
> ExportRequestResponse export_request(export_request_info)

Create Export Request

Export normalized messages. The following input combinations are supported:<br/><table><tr><th>Combination</th><th>Parameters</th><th>Description</th></tr><tr><td>Get by users</td><td>uids</td><td>Search by a list of User IDs. For each user in the list, the current authenticated user must have read access over the specified user.</td></tr><tr><td>Get by devices</td><td>sdids</td><td>Search by Source Device IDs.</td></tr><tr><td>Get by device types</td><td>uids,sdtids</td><td>Search by list of Source Device Type IDs for the given list of users.</td></tr><tr><td>Get by trial</td><td>trialId</td><td>Search by Trial ID.</td></tr><tr><td>Get by combination of parameters</td><td>uids,sdids,sdtids</td><td>Search by list of Source Device IDs. Each Device ID must belong to a Source Device Type ID and a User ID.</td></tr><tr><td>Common</td><td>startDate,endDate,order,format,url,csvHeaders</td><td>Parameters that can be used with the above combinations.</td></tr></table>

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::ExportApi.new

export_request_info = ArtikCloud::ExportRequestInfo.new # ExportRequestInfo | ExportRequest object that is passed in the body


begin
  #Create Export Request
  result = api_instance.export_request(export_request_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling ExportApi->export_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_request_info** | [**ExportRequestInfo**](ExportRequestInfo.md)| ExportRequest object that is passed in the body | 

### Return type

[**ExportRequestResponse**](ExportRequestResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_export_history**
> ExportHistoryResponse get_export_history(opts)

Get Export History

Get the history of export requests.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::ExportApi.new

opts = { 
  trial_id: "trial_id_example", # String | Filter by trialId.
  count: 56, # Integer | Pagination count.
  offset: 56 # Integer | Pagination offset.
}

begin
  #Get Export History
  result = api_instance.get_export_history(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling ExportApi->get_export_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trial_id** | **String**| Filter by trialId. | [optional] 
 **count** | **Integer**| Pagination count. | [optional] 
 **offset** | **Integer**| Pagination offset. | [optional] 

### Return type

[**ExportHistoryResponse**](ExportHistoryResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_export_result**
> String get_export_result(export_id)

Get Export Result

Retrieve result of the export query in tgz format. The tar file may contain one or more files with the results.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::ExportApi.new

export_id = "export_id_example" # String | Export ID of the export query.


begin
  #Get Export Result
  result = api_instance.get_export_result(export_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling ExportApi->get_export_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_id** | **String**| Export ID of the export query. | 

### Return type

**String**

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_export_status**
> ExportStatusResponse get_export_status(export_id)

Check Export Status

Check status of the export query.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::ExportApi.new

export_id = "export_id_example" # String | Export ID of the export query.


begin
  #Check Export Status
  result = api_instance.get_export_status(export_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling ExportApi->get_export_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_id** | **String**| Export ID of the export query. | 

### Return type

[**ExportStatusResponse**](ExportStatusResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



