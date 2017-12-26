# ArtikCloud::MonetizationApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pricing_tiers**](MonetizationApi.md#create_pricing_tiers) | **POST** /pricing/devicetypes/{dtid}/pricingtiers | Define devicetype&#39;s pricing tiers.
[**get_pricing_tiers**](MonetizationApi.md#get_pricing_tiers) | **GET** /pricing/devices/{did}/pricingtiers | Get a device&#39;s pricing tiers
[**get_the__pricing_tiers**](MonetizationApi.md#get_the__pricing_tiers) | **GET** /pricing/devicetypes/{dtid}/pricingtiers | Get devicetype&#39;s pricing tiers.
[**get_upgrade_path**](MonetizationApi.md#get_upgrade_path) | **GET** /pricing/devices/{did}/revenueshare/upgradepath | Get upgrade path
[**set_pricing_tier**](MonetizationApi.md#set_pricing_tier) | **PUT** /pricing/devices/{did}/pricingtiers | Set a device&#39;s pricing tier


# **create_pricing_tiers**
> DeviceTypePricingTier create_pricing_tiers(dtid, pricing_tier_info)

Define devicetype's pricing tiers.

Define devicetype's pricing tiers.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MonetizationApi.new

dtid = "dtid_example" # String | DeviceType ID

pricing_tier_info = ArtikCloud::DeviceTypePricingTier.new # DeviceTypePricingTier | Pricing tier info


begin
  #Define devicetype's pricing tiers.
  result = api_instance.create_pricing_tiers(dtid, pricing_tier_info)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MonetizationApi->create_pricing_tiers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| DeviceType ID | 
 **pricing_tier_info** | [**DeviceTypePricingTier**](DeviceTypePricingTier.md)| Pricing tier info | 

### Return type

[**DeviceTypePricingTier**](DeviceTypePricingTier.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pricing_tiers**
> DevicePricingTiersEnvelope get_pricing_tiers(did, opts)

Get a device's pricing tiers

Get a device's pricing tiers

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MonetizationApi.new

did = "did_example" # String | Device ID

opts = { 
  active: true # BOOLEAN | Filter by active
}

begin
  #Get a device's pricing tiers
  result = api_instance.get_pricing_tiers(did, opts)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MonetizationApi->get_pricing_tiers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID | 
 **active** | **BOOLEAN**| Filter by active | [optional] 

### Return type

[**DevicePricingTiersEnvelope**](DevicePricingTiersEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_the__pricing_tiers**
> DeviceTypePricingTiersEnvelope get_the__pricing_tiers(dtid, version)

Get devicetype's pricing tiers.

Get devicetype's pricing tiers.

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MonetizationApi.new

dtid = "dtid_example" # String | DeviceType ID

version = 56 # Integer | Version


begin
  #Get devicetype's pricing tiers.
  result = api_instance.get_the__pricing_tiers(dtid, version)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MonetizationApi->get_the__pricing_tiers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **String**| DeviceType ID | 
 **version** | **Integer**| Version | 

### Return type

[**DeviceTypePricingTiersEnvelope**](DeviceTypePricingTiersEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_upgrade_path**
> UpgradePathEnvelope get_upgrade_path(did, action)

Get upgrade path

Get upgrade path

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MonetizationApi.new

did = "did_example" # String | Device ID

action = "action_example" # String | Action to perform


begin
  #Get upgrade path
  result = api_instance.get_upgrade_path(did, action)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MonetizationApi->get_upgrade_path: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID | 
 **action** | **String**| Action to perform | 

### Return type

[**UpgradePathEnvelope**](UpgradePathEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_pricing_tier**
> DevicePricingTierEnvelope set_pricing_tier(did, pricing_tier)

Set a device's pricing tier

Set a device's pricing tier

### Example
```ruby
# load the gem
require 'artikcloud'
# setup authorization
ArtikCloud.configure do |config|
  # Configure OAuth2 access token for authorization: artikcloud_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ArtikCloud::MonetizationApi.new

did = "did_example" # String | Device ID

pricing_tier = ArtikCloud::DevicePricingTierRequest.new # DevicePricingTierRequest | Pricing tier


begin
  #Set a device's pricing tier
  result = api_instance.set_pricing_tier(did, pricing_tier)
  p result
rescue ArtikCloud::ApiError => e
  puts "Exception when calling MonetizationApi->set_pricing_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **String**| Device ID | 
 **pricing_tier** | [**DevicePricingTierRequest**](DevicePricingTierRequest.md)| Pricing tier | 

### Return type

[**DevicePricingTierEnvelope**](DevicePricingTierEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



