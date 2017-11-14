# ArtikCloud::TokensApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_token**](TokensApi.md#check_token) | **POST** /accounts/checkToken | Check Token
[**refresh_token**](TokensApi.md#refresh_token) | **POST** /accounts/token | Refresh Token
[**token_info**](TokensApi.md#token_info) | **GET** /accounts/tokenInfo | Token Info


# **check_token**
> CheckTokenResponse check_token(token_info)

Check Token

(Deprecated) Check Token. See tokenInfo

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TokensApi.new

token_info = ArtikCloud::TokenRequest.new # TokenRequest | Token object to be checked


begin
  #Check Token
  result = api_instance.check_token(token_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TokensApi->check_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_info** | [**TokenRequest**](TokenRequest.md)| Token object to be checked | 

### Return type

[**CheckTokenResponse**](CheckTokenResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **refresh_token**
> RefreshTokenResponse refresh_token(grant_type, refresh_token)

Refresh Token

Refresh Token

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TokensApi.new

grant_type = "grant_type_example" # String | Grant Type.

refresh_token = "refresh_token_example" # String | Refresh Token.


begin
  #Refresh Token
  result = api_instance.refresh_token(grant_type, refresh_token)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TokensApi->refresh_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant Type. | 
 **refresh_token** | **String**| Refresh Token. | 

### Return type

[**RefreshTokenResponse**](RefreshTokenResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **token_info**
> TokenInfoSuccessResponse token_info

Token Info

Returns the Token Information

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::TokensApi.new

begin
  #Token Info
  result = api_instance.token_info
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling TokensApi->token_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenInfoSuccessResponse**](TokenInfoSuccessResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



