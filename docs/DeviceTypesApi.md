# ArtikCloud::DeviceTypesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_available_manifest_versions**](DeviceTypesApi.md#get_available_manifest_versions) | **GET** /devicetypes/{deviceTypeId}/availablemanifestversions | Get Available Manifest Versions
[**get_device_type**](DeviceTypesApi.md#get_device_type) | **GET** /devicetypes/{deviceTypeId} | Get Device Type
[**get_device_types**](DeviceTypesApi.md#get_device_types) | **GET** /devicetypes | Get Device Types
[**get_device_types_by_application**](DeviceTypesApi.md#get_device_types_by_application) | **GET** /applications/{appId}/devicetypes | Get Device Types by Application
[**get_latest_manifest_properties**](DeviceTypesApi.md#get_latest_manifest_properties) | **GET** /devicetypes/{deviceTypeId}/manifests/latest/properties | Get Latest Manifest Properties
[**get_manifest_properties**](DeviceTypesApi.md#get_manifest_properties) | **GET** /devicetypes/{deviceTypeId}/manifests/{version}/properties | Get manifest properties


# **get_available_manifest_versions**
> ManifestVersionsEnvelope get_available_manifest_versions(device_type_id)

Get Available Manifest Versions

Get a Device Type's available manifest versions

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

device_type_id = "device_type_id_example" # String | deviceTypeId


begin
  #Get Available Manifest Versions
  result = api_instance.get_available_manifest_versions(device_type_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_available_manifest_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_type_id** | **String**| deviceTypeId | 

### Return type

[**ManifestVersionsEnvelope**](ManifestVersionsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_type**
> DeviceTypeEnvelope get_device_type(device_type_id)

Get Device Type

Retrieves a Device Type

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

device_type_id = "device_type_id_example" # String | deviceTypeId


begin
  #Get Device Type
  result = api_instance.get_device_type(device_type_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_device_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_type_id** | **String**| deviceTypeId | 

### Return type

[**DeviceTypeEnvelope**](DeviceTypeEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_types**
> DeviceTypesEnvelope get_device_types(name, opts)

Get Device Types

Retrieves Device Types

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

name = "name_example" # String | Device Type name

opts = { 
  offset: 56, # Integer | Offset for pagination.
  count: 56, # Integer | Desired count of items in the result set
  tags: "tags_example" # String | Elements tagged with the list of tags. (comma separated)
}

begin
  #Get Device Types
  result = api_instance.get_device_types(name, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_device_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Device Type name | 
 **offset** | **Integer**| Offset for pagination. | [optional] 
 **count** | **Integer**| Desired count of items in the result set | [optional] 
 **tags** | **String**| Elements tagged with the list of tags. (comma separated) | [optional] 

### Return type

[**DeviceTypesEnvelope**](DeviceTypesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_types_by_application**
> DeviceTypesEnvelope get_device_types_by_application(app_id, opts)

Get Device Types by Application

Get Device Types by Application

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

app_id = "app_id_example" # String | Application ID.

opts = { 
  product_info: true, # BOOLEAN | Flag to include the associated ProductInfo if present
  count: 56, # Integer | Desired count of items in the result set.
  offset: 56 # Integer | Offset for pagination.
}

begin
  #Get Device Types by Application
  result = api_instance.get_device_types_by_application(app_id, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_device_types_by_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Application ID. | 
 **product_info** | **BOOLEAN**| Flag to include the associated ProductInfo if present | [optional] 
 **count** | **Integer**| Desired count of items in the result set. | [optional] 
 **offset** | **Integer**| Offset for pagination. | [optional] 

### Return type

[**DeviceTypesEnvelope**](DeviceTypesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_latest_manifest_properties**
> ManifestPropertiesEnvelope get_latest_manifest_properties(device_type_id)

Get Latest Manifest Properties

Get a Device Type's manifest properties for the latest version.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

device_type_id = "device_type_id_example" # String | Device Type ID.


begin
  #Get Latest Manifest Properties
  result = api_instance.get_latest_manifest_properties(device_type_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_latest_manifest_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_type_id** | **String**| Device Type ID. | 

### Return type

[**ManifestPropertiesEnvelope**](ManifestPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_manifest_properties**
> ManifestPropertiesEnvelope get_manifest_properties(device_type_id, version)

Get manifest properties

Get a Device Type's manifest properties for a specific version.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::DeviceTypesApi.new

device_type_id = "device_type_id_example" # String | Device Type ID.

version = "version_example" # String | Manifest Version.


begin
  #Get manifest properties
  result = api_instance.get_manifest_properties(device_type_id, version)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling DeviceTypesApi->get_manifest_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_type_id** | **String**| Device Type ID. | 
 **version** | **String**| Manifest Version. | 

### Return type

[**ManifestPropertiesEnvelope**](ManifestPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



