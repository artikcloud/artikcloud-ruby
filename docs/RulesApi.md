# ArtikCloud::RulesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_rule**](RulesApi.md#create_rule) | **POST** /rules | Create Rule
[**delete_rule**](RulesApi.md#delete_rule) | **DELETE** /rules/{ruleId} | Delete Rule
[**get_rule**](RulesApi.md#get_rule) | **GET** /rules/{ruleId} | Get Rule
[**update_rule**](RulesApi.md#update_rule) | **PUT** /rules/{ruleId} | Update Rule


# **create_rule**
> RuleEnvelope create_rule(rule_info, user_id)

Create Rule

Create a new Rule

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RulesApi.new

rule_info = ArtikCloud::RuleCreationInfo.new # RuleCreationInfo | Rule object that needs to be added

user_id = "user_id_example" # String | User ID


begin
  #Create Rule
  result = api_instance.create_rule(rule_info, user_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RulesApi->create_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_info** | [**RuleCreationInfo**](RuleCreationInfo.md)| Rule object that needs to be added | 
 **user_id** | **String**| User ID | 

### Return type

[**RuleEnvelope**](RuleEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_rule**
> RuleEnvelope delete_rule(rule_id)

Delete Rule

Delete a Rule

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RulesApi.new

rule_id = "rule_id_example" # String | Rule ID.


begin
  #Delete Rule
  result = api_instance.delete_rule(rule_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RulesApi->delete_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **String**| Rule ID. | 

### Return type

[**RuleEnvelope**](RuleEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_rule**
> RuleEnvelope get_rule(rule_id)

Get Rule

Get a rule using the Rule ID

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RulesApi.new

rule_id = "rule_id_example" # String | Rule ID.


begin
  #Get Rule
  result = api_instance.get_rule(rule_id)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RulesApi->get_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **String**| Rule ID. | 

### Return type

[**RuleEnvelope**](RuleEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_rule**
> RuleEnvelope update_rule(rule_id, rule_info)

Update Rule

Update an existing Rule

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::RulesApi.new

rule_id = "rule_id_example" # String | Rule ID.

rule_info = ArtikCloud::RuleUpdateInfo.new # RuleUpdateInfo | Rule object that needs to be updated


begin
  #Update Rule
  result = api_instance.update_rule(rule_id, rule_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling RulesApi->update_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **String**| Rule ID. | 
 **rule_info** | [**RuleUpdateInfo**](RuleUpdateInfo.md)| Rule object that needs to be updated | 

### Return type

[**RuleEnvelope**](RuleEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



