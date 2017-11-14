# ArtikCloud::TagsApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tag_categories**](TagsApi.md#get_tag_categories) | **GET** /tags/categories | Get all categories
[**get_tag_suggestions**](TagsApi.md#get_tag_suggestions) | **GET** /tags/suggestions | Get tag suggestions
[**get_tags_by_categories**](TagsApi.md#get_tags_by_categories) | **GET** /tags | Get all tags of categories


# **get_tag_categories**
> TagsEnvelope get_tag_categories

Get all categories

Get all tags marked as categories

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TagsApi.new

begin
  #Get all categories
  result = api_instance.get_tag_categories
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TagsApi->get_tag_categories: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TagsEnvelope**](TagsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tag_suggestions**
> TagsEnvelope get_tag_suggestions(opts)

Get tag suggestions

Get tag suggestions for applications, device types that have been most used with a group of tags.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TagsApi.new

opts = { 
  entity_type: "entity_type_example", # String | Entity type name.
  tags: "tags_example", # String | Comma separated list of tags.
  name: "name_example", # String | Name of tags used for type ahead.
  count: 56 # Integer | Number of results to return. Max 10.
}

begin
  #Get tag suggestions
  result = api_instance.get_tag_suggestions(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TagsApi->get_tag_suggestions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Entity type name. | [optional] 
 **tags** | **String**| Comma separated list of tags. | [optional] 
 **name** | **String**| Name of tags used for type ahead. | [optional] 
 **count** | **Integer**| Number of results to return. Max 10. | [optional] 

### Return type

[**TagsEnvelope**](TagsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags_by_categories**
> TagsEnvelope get_tags_by_categories(opts)

Get all tags of categories

Get all tags related to the list of categories

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TagsApi.new

opts = { 
  categories: "categories_example" # String | Comma separated list of categories.
}

begin
  #Get all tags of categories
  result = api_instance.get_tags_by_categories(opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TagsApi->get_tags_by_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | **String**| Comma separated list of categories. | [optional] 

### Return type

[**TagsEnvelope**](TagsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



