# ArtikCloud::DevicesManagementApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tasks**](DevicesManagementApi.md#create_tasks) | **POST** /devicemgmt/tasks | Create a new task for one or more devices
[**delete_server_properties**](DevicesManagementApi.md#delete_server_properties) | **DELETE** /devicemgmt/devices/{did}/serverproperties | Deletes a device&#39;s properties.
[**get_all_by_did**](DevicesManagementApi.md#get_all_by_did) | **GET** /devicemgmt/devices/{did}/tasks | Returns the list of tasks for a particular device id with optional status filter.
[**get_device_types_info**](DevicesManagementApi.md#get_device_types_info) | **GET** /devicemgmt/devicetypes/{dtid} | Read a device type device management information.
[**get_manifest_properties**](DevicesManagementApi.md#get_manifest_properties) | **GET** /devicemgmt/devicetypes/{dtid}/manifest/properties | Get a device type&#39;s device management manifest properties
[**get_properties**](DevicesManagementApi.md#get_properties) | **GET** /devicemgmt/devices/{did}/properties | Read a device&#39;s properties.
[**get_statuses**](DevicesManagementApi.md#get_statuses) | **GET** /devicemgmt/tasks/{tid}/statuses | Returns the details and status of a task id and the individual statuses of each device id in the list.
[**get_statuses_history**](DevicesManagementApi.md#get_statuses_history) | **GET** /devicemgmt/tasks/{tid}/statuses/history | Returns the history of the status changes for a specific task id, or for a specific device id in that task.
[**get_task_by_id**](DevicesManagementApi.md#get_task_by_id) | **GET** /devicemgmt/tasks/{tid} | Returns the details and global status of a specific task id.
[**get_tasks**](DevicesManagementApi.md#get_tasks) | **GET** /devicemgmt/tasks | Returns the all the tasks for a device type.
[**query_properties**](DevicesManagementApi.md#query_properties) | **GET** /devicemgmt/devices/properties | Query device properties across devices.
[**update_device_types_info**](DevicesManagementApi.md#update_device_types_info) | **PUT** /devicemgmt/devicetypes/{dtid} | Updates a device type information
[**update_server_properties**](DevicesManagementApi.md#update_server_properties) | **POST** /devicemgmt/devices/{did}/serverproperties | Updates a device&#39;s server properties.
[**update_task**](DevicesManagementApi.md#update_task) | **PUT** /devicemgmt/tasks/{tid} | Updates a task for all devices - For now just allows changing the state to cancelled.
[**update_task_for_device**](DevicesManagementApi.md#update_task_for_device) | **PUT** /devicemgmt/tasks/{tid}/devices/{did} | Updates a task for a specific device - For now just allows changing the state to cancelled.


# **create_tasks**
> TaskEnvelope create_tasks(task_payload)

Create a new task for one or more devices

Create a new task for one or more devices

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

task_payload = ArtikCloud::TaskRequest.new # TaskRequest | Task object to be created


begin
  #Create a new task for one or more devices
  result = api_instance.create_tasks(task_payload)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->create_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_payload** | [**TaskRequest**](TaskRequest.md)| Task object to be created | 

### Return type

[**TaskEnvelope**](TaskEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_server_properties**
> MetadataEnvelope delete_server_properties(did)

Deletes a device's properties.

Deletes a device's properties.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

did = "did_example" # String | Device ID.


begin
  #Deletes a device's properties.
  result = api_instance.delete_server_properties(did)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->delete_server_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID. | 

### Return type

[**MetadataEnvelope**](MetadataEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_by_did**
> TaskByDidListEnvelope get_all_by_did(did, opts)

Returns the list of tasks for a particular device id with optional status filter.

Returns the list of tasks for a particular device id with optional status filter.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

did = "did_example" # String | Device ID.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56, # Integer | Result starting offset.
  status: "status_example", # String | Status filter. Comma-separated statuses.
  order: "order_example", # String | Sort results by a field. Valid fields: createdOn.
  sort: "sort_example" # String | Sort order. Valid values: asc or desc.
}

begin
  #Returns the list of tasks for a particular device id with optional status filter.
  result = api_instance.get_all_by_did(did, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_all_by_did: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 
 **status** | **String**| Status filter. Comma-separated statuses. | [optional] 
 **order** | **String**| Sort results by a field. Valid fields: createdOn. | [optional] 
 **sort** | **String**| Sort order. Valid values: asc or desc. | [optional] 

### Return type

[**TaskByDidListEnvelope**](TaskByDidListEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_types_info**
> DeviceTypesInfoEnvelope get_device_types_info(dtid)

Read a device type device management information.

Read a device type device management information.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

dtid = "dtid_example" # String | Device type ID.


begin
  #Read a device type device management information.
  result = api_instance.get_device_types_info(dtid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_device_types_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device type ID. | 

### Return type

[**DeviceTypesInfoEnvelope**](DeviceTypesInfoEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_manifest_properties**
> MetadataPropertiesEnvelope get_manifest_properties(dtid)

Get a device type's device management manifest properties

Get a device type's device management manifest properties

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

dtid = "dtid_example" # String | Device Type ID.


begin
  #Get a device type's device management manifest properties
  result = api_instance.get_manifest_properties(dtid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_manifest_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 

### Return type

[**MetadataPropertiesEnvelope**](MetadataPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_properties**
> MetadataEnvelope get_properties(did, opts)

Read a device's properties.

Read a device's properties.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

did = "did_example" # String | Device ID.

opts = { 
  include_timestamp: true # BOOLEAN | Include timestamp.
}

begin
  #Read a device's properties.
  result = api_instance.get_properties(did, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID. | 
 **include_timestamp** | **BOOLEAN**| Include timestamp. | [optional] 

### Return type

[**MetadataEnvelope**](MetadataEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_statuses**
> TaskStatusesEnvelope get_statuses(tid, opts)

Returns the details and status of a task id and the individual statuses of each device id in the list.

Returns the details and status of a task id and the individual statuses of each device id in the list.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

tid = "tid_example" # String | Task ID.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56, # Integer | Result starting offset.
  status: "status_example", # String | Status filter. Comma-separated statuses.
  dids: "dids_example" # String | Devices filter. Comma-separated device IDs.
}

begin
  #Returns the details and status of a task id and the individual statuses of each device id in the list.
  result = api_instance.get_statuses(tid, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_statuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tid** | **String**| Task ID. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 
 **status** | **String**| Status filter. Comma-separated statuses. | [optional] 
 **dids** | **String**| Devices filter. Comma-separated device IDs. | [optional] 

### Return type

[**TaskStatusesEnvelope**](TaskStatusesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_statuses_history**
> TaskStatusesHistoryEnvelope get_statuses_history(tid, opts)

Returns the history of the status changes for a specific task id, or for a specific device id in that task.

Returns the history of the status changes for a specific task id, or for a specific device id in that task.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

tid = "tid_example" # String | Task ID.

opts = { 
  did: "did_example" # String | Device ID. Optional.
}

begin
  #Returns the history of the status changes for a specific task id, or for a specific device id in that task.
  result = api_instance.get_statuses_history(tid, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_statuses_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tid** | **String**| Task ID. | 
 **did** | **String**| Device ID. Optional. | [optional] 

### Return type

[**TaskStatusesHistoryEnvelope**](TaskStatusesHistoryEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task_by_id**
> TaskEnvelope get_task_by_id(tid)

Returns the details and global status of a specific task id.

Returns the details and global status of a specific task id.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

tid = "tid_example" # String | Task ID.


begin
  #Returns the details and global status of a specific task id.
  result = api_instance.get_task_by_id(tid)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_task_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tid** | **String**| Task ID. | 

### Return type

[**TaskEnvelope**](TaskEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tasks**
> TaskListEnvelope get_tasks(dtid, opts)

Returns the all the tasks for a device type.

Returns the all the tasks for a device type.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

dtid = "dtid_example" # String | Device Type ID.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56, # Integer | Result starting offset.
  status: "status_example", # String | Status filter. Comma-separated statuses.
  order: "order_example", # String | Sort results by a field. Valid fields: createdOn.
  sort: "sort_example" # String | Sort order. Valid values: asc or desc.
}

begin
  #Returns the all the tasks for a device type.
  result = api_instance.get_tasks(dtid, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->get_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 
 **status** | **String**| Status filter. Comma-separated statuses. | [optional] 
 **order** | **String**| Sort results by a field. Valid fields: createdOn. | [optional] 
 **sort** | **String**| Sort order. Valid values: asc or desc. | [optional] 

### Return type

[**TaskListEnvelope**](TaskListEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **query_properties**
> MetadataQueryEnvelope query_properties(dtid, opts)

Query device properties across devices.

Query device properties across devices.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

dtid = "dtid_example" # String | Device Type ID.

opts = { 
  count: 56, # Integer | Max results count.
  offset: 56, # Integer | Result starting offset.
  filter: "filter_example", # String | Query filter. Comma-separated key=value pairs
  include_timestamp: true # BOOLEAN | Include timestamp.
}

begin
  #Query device properties across devices.
  result = api_instance.query_properties(dtid, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->query_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device Type ID. | 
 **count** | **Integer**| Max results count. | [optional] 
 **offset** | **Integer**| Result starting offset. | [optional] 
 **filter** | **String**| Query filter. Comma-separated key&#x3D;value pairs | [optional] 
 **include_timestamp** | **BOOLEAN**| Include timestamp. | [optional] 

### Return type

[**MetadataQueryEnvelope**](MetadataQueryEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_device_types_info**
> DeviceTypesInfoEnvelope update_device_types_info(dtid, device_type_info)

Updates a device type information

Updates a device type information

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

dtid = "dtid_example" # String | Device type ID.

device_type_info = ArtikCloud::DeviceTypesInfo.new # DeviceTypesInfo | Device type info object to be set


begin
  #Updates a device type information
  result = api_instance.update_device_types_info(dtid, device_type_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->update_device_types_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| Device type ID. | 
 **device_type_info** | [**DeviceTypesInfo**](DeviceTypesInfo.md)| Device type info object to be set | 

### Return type

[**DeviceTypesInfoEnvelope**](DeviceTypesInfoEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_server_properties**
> MetadataEnvelope update_server_properties(did, device_properties)

Updates a device's server properties.

Updates a device's server properties.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

did = "did_example" # String | Device ID.

device_properties = nil # Object | Device properties object to be set


begin
  #Updates a device's server properties.
  result = api_instance.update_server_properties(did, device_properties)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->update_server_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID. | 
 **device_properties** | **Object**| Device properties object to be set | 

### Return type

[**MetadataEnvelope**](MetadataEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_task**
> TaskUpdateResponse update_task(tid, task_update_request)

Updates a task for all devices - For now just allows changing the state to cancelled.

Updates a task for all devices - For now just allows changing the state to cancelled.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

tid = "tid_example" # String | Task ID.

task_update_request = ArtikCloud::TaskUpdateRequest.new # TaskUpdateRequest | Task update request


begin
  #Updates a task for all devices - For now just allows changing the state to cancelled.
  result = api_instance.update_task(tid, task_update_request)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tid** | **String**| Task ID. | 
 **task_update_request** | [**TaskUpdateRequest**](TaskUpdateRequest.md)| Task update request | 

### Return type

[**TaskUpdateResponse**](TaskUpdateResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_task_for_device**
> DeviceTaskUpdateResponse update_task_for_device(tid, did, device_task_update_request)

Updates a task for a specific device - For now just allows changing the state to cancelled.

Updates a task for a specific device - For now just allows changing the state to cancelled.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DevicesManagementApi.new

tid = "tid_example" # String | Task ID.

did = "did_example" # String | Device ID.

device_task_update_request = ArtikCloud::DeviceTaskUpdateRequest.new # DeviceTaskUpdateRequest | Device task update request


begin
  #Updates a task for a specific device - For now just allows changing the state to cancelled.
  result = api_instance.update_task_for_device(tid, did, device_task_update_request)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DevicesManagementApi->update_task_for_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tid** | **String**| Task ID. | 
 **did** | **String**| Device ID. | 
 **device_task_update_request** | [**DeviceTaskUpdateRequest**](DeviceTaskUpdateRequest.md)| Device task update request | 

### Return type

[**DeviceTaskUpdateResponse**](DeviceTaskUpdateResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



