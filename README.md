ARTIK Cloud Ruby SDK
================

 [![Gem Version](https://badge.fury.io/rb/artikcloud.svg)](https://badge.fury.io/rb/artikcloud)

This SDK helps you connect your Ruby scripts to ARTIK Cloud. The SDK exposes a number of methods to easily execute REST API calls to ARTIK Cloud.
- Package version: 2.2.3

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build artikcloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./artikcloud-2.2.3.gem
```
(for development, run `gem install --dev ./artikcloud-2.2.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'artikcloud', '~> 2.2.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'artikcloud', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'artikcloud'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.artik.cloud/v1.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtikCloud::DeviceTypesApi* | [**get_available_manifest_versions**](docs/DeviceTypesApi.md#get_available_manifest_versions) | **GET** /devicetypes/{deviceTypeId}/availablemanifestversions | Get Available Manifest Versions
*ArtikCloud::DeviceTypesApi* | [**get_device_type**](docs/DeviceTypesApi.md#get_device_type) | **GET** /devicetypes/{deviceTypeId} | Get Device Type
*ArtikCloud::DeviceTypesApi* | [**get_device_types**](docs/DeviceTypesApi.md#get_device_types) | **GET** /devicetypes | Get Device Types
*ArtikCloud::DeviceTypesApi* | [**get_device_types_by_application**](docs/DeviceTypesApi.md#get_device_types_by_application) | **GET** /applications/{appId}/devicetypes | Get Device Types by Application
*ArtikCloud::DeviceTypesApi* | [**get_latest_manifest_properties**](docs/DeviceTypesApi.md#get_latest_manifest_properties) | **GET** /devicetypes/{deviceTypeId}/manifests/latest/properties | Get Latest Manifest Properties
*ArtikCloud::DeviceTypesApi* | [**get_manifest_properties**](docs/DeviceTypesApi.md#get_manifest_properties) | **GET** /devicetypes/{deviceTypeId}/manifests/{version}/properties | Get manifest properties
*ArtikCloud::DevicesApi* | [**add_device**](docs/DevicesApi.md#add_device) | **POST** /devices | Add Device
*ArtikCloud::DevicesApi* | [**delete_device**](docs/DevicesApi.md#delete_device) | **DELETE** /devices/{deviceId} | Delete Device
*ArtikCloud::DevicesApi* | [**delete_device_token**](docs/DevicesApi.md#delete_device_token) | **DELETE** /devices/{deviceId}/tokens | Delete Device Token
*ArtikCloud::DevicesApi* | [**get_device**](docs/DevicesApi.md#get_device) | **GET** /devices/{deviceId} | Get Device
*ArtikCloud::DevicesApi* | [**get_device_presence**](docs/DevicesApi.md#get_device_presence) | **GET** /devices/{deviceId}/presence | Get device presence information
*ArtikCloud::DevicesApi* | [**get_device_token**](docs/DevicesApi.md#get_device_token) | **GET** /devices/{deviceId}/tokens | Get Device Token
*ArtikCloud::DevicesApi* | [**update_device**](docs/DevicesApi.md#update_device) | **PUT** /devices/{deviceId} | Update Device
*ArtikCloud::DevicesApi* | [**update_device_token**](docs/DevicesApi.md#update_device_token) | **PUT** /devices/{deviceId}/tokens | Update Device Token
*ArtikCloud::DevicesManagementApi* | [**create_tasks**](docs/DevicesManagementApi.md#create_tasks) | **POST** /devicemgmt/tasks | Create a new task for one or more devices
*ArtikCloud::DevicesManagementApi* | [**delete_server_properties**](docs/DevicesManagementApi.md#delete_server_properties) | **DELETE** /devicemgmt/devices/{did}/serverproperties | Deletes a device's properties.
*ArtikCloud::DevicesManagementApi* | [**get_all_by_did**](docs/DevicesManagementApi.md#get_all_by_did) | **GET** /devicemgmt/devices/{did}/tasks | Returns the list of tasks for a particular device id with optional status filter.
*ArtikCloud::DevicesManagementApi* | [**get_device_types_info**](docs/DevicesManagementApi.md#get_device_types_info) | **GET** /devicemgmt/devicetypes/{dtid} | Read a device type device management information.
*ArtikCloud::DevicesManagementApi* | [**get_manifest_properties**](docs/DevicesManagementApi.md#get_manifest_properties) | **GET** /devicemgmt/devicetypes/{dtid}/manifest/properties | Get a device type's device management manifest properties
*ArtikCloud::DevicesManagementApi* | [**get_properties**](docs/DevicesManagementApi.md#get_properties) | **GET** /devicemgmt/devices/{did}/properties | Read a device's properties.
*ArtikCloud::DevicesManagementApi* | [**get_statuses**](docs/DevicesManagementApi.md#get_statuses) | **GET** /devicemgmt/tasks/{tid}/statuses | Returns the details and status of a task id and the individual statuses of each device id in the list.
*ArtikCloud::DevicesManagementApi* | [**get_statuses_history**](docs/DevicesManagementApi.md#get_statuses_history) | **GET** /devicemgmt/tasks/{tid}/statuses/history | Returns the history of the status changes for a specific task id, or for a specific device id in that task.
*ArtikCloud::DevicesManagementApi* | [**get_task_by_id**](docs/DevicesManagementApi.md#get_task_by_id) | **GET** /devicemgmt/tasks/{tid} | Returns the details and global status of a specific task id.
*ArtikCloud::DevicesManagementApi* | [**get_tasks**](docs/DevicesManagementApi.md#get_tasks) | **GET** /devicemgmt/tasks | Returns the all the tasks for a device type.
*ArtikCloud::DevicesManagementApi* | [**query_properties**](docs/DevicesManagementApi.md#query_properties) | **GET** /devicemgmt/devices/properties | Query device properties across devices.
*ArtikCloud::DevicesManagementApi* | [**update_device_types_info**](docs/DevicesManagementApi.md#update_device_types_info) | **PUT** /devicemgmt/devicetypes/{dtid} | Updates a device type information
*ArtikCloud::DevicesManagementApi* | [**update_server_properties**](docs/DevicesManagementApi.md#update_server_properties) | **POST** /devicemgmt/devices/{did}/serverproperties | Updates a device's server properties.
*ArtikCloud::DevicesManagementApi* | [**update_task**](docs/DevicesManagementApi.md#update_task) | **PUT** /devicemgmt/tasks/{tid} | Updates a task for all devices - For now just allows changing the state to cancelled.
*ArtikCloud::DevicesManagementApi* | [**update_task_for_device**](docs/DevicesManagementApi.md#update_task_for_device) | **PUT** /devicemgmt/tasks/{tid}/devices/{did} | Updates a task for a specific device - For now just allows changing the state to cancelled.
*ArtikCloud::DevicesSharesApi* | [**create_share_for_device**](docs/DevicesSharesApi.md#create_share_for_device) | **POST** /devices/{deviceId}/shares | Share a device 
*ArtikCloud::DevicesSharesApi* | [**delete_sharing_for_device**](docs/DevicesSharesApi.md#delete_sharing_for_device) | **DELETE** /devices/{deviceId}/shares/{shareId} | Delete specific share of the given device id
*ArtikCloud::DevicesSharesApi* | [**get_all_shares_for_device**](docs/DevicesSharesApi.md#get_all_shares_for_device) | **GET** /devices/{deviceId}/shares | List all shares for the given device id
*ArtikCloud::DevicesSharesApi* | [**get_sharing_for_device**](docs/DevicesSharesApi.md#get_sharing_for_device) | **GET** /devices/{deviceId}/shares/{shareId} | Get specific share of the given device id
*ArtikCloud::DevicesStatusApi* | [**get_device_status**](docs/DevicesStatusApi.md#get_device_status) | **GET** /devices/{deviceId}/status | Get Device Status
*ArtikCloud::DevicesStatusApi* | [**get_devices_status**](docs/DevicesStatusApi.md#get_devices_status) | **GET** /devices/status | Get Devices Status
*ArtikCloud::DevicesStatusApi* | [**put_device_status**](docs/DevicesStatusApi.md#put_device_status) | **PUT** /devices/{deviceId}/status | Update Device Status
*ArtikCloud::ExportApi* | [**export_request**](docs/ExportApi.md#export_request) | **POST** /messages/export | Create Export Request
*ArtikCloud::ExportApi* | [**get_export_history**](docs/ExportApi.md#get_export_history) | **GET** /messages/export/history | Get Export History
*ArtikCloud::ExportApi* | [**get_export_result**](docs/ExportApi.md#get_export_result) | **GET** /messages/export/{exportId}/result | Get Export Result
*ArtikCloud::ExportApi* | [**get_export_status**](docs/ExportApi.md#get_export_status) | **GET** /messages/export/{exportId}/status | Check Export Status
*ArtikCloud::MessagesApi* | [**get_aggregates_histogram**](docs/MessagesApi.md#get_aggregates_histogram) | **GET** /messages/analytics/histogram | Get Normalized Message Histogram
*ArtikCloud::MessagesApi* | [**get_field_presence**](docs/MessagesApi.md#get_field_presence) | **GET** /messages/presence | Get normalized message presence
*ArtikCloud::MessagesApi* | [**get_last_normalized_messages**](docs/MessagesApi.md#get_last_normalized_messages) | **GET** /messages/last | Get Last Normalized Message
*ArtikCloud::MessagesApi* | [**get_message_aggregates**](docs/MessagesApi.md#get_message_aggregates) | **GET** /messages/analytics/aggregates | Get Normalized Message Aggregates
*ArtikCloud::MessagesApi* | [**get_message_snapshots**](docs/MessagesApi.md#get_message_snapshots) | **GET** /messages/snapshots | Get Message Snapshots
*ArtikCloud::MessagesApi* | [**get_normalized_actions**](docs/MessagesApi.md#get_normalized_actions) | **GET** /actions | Get Normalized Actions
*ArtikCloud::MessagesApi* | [**get_normalized_messages**](docs/MessagesApi.md#get_normalized_messages) | **GET** /messages | Get Normalized Messages
*ArtikCloud::MessagesApi* | [**send_actions**](docs/MessagesApi.md#send_actions) | **POST** /actions | Send Actions
*ArtikCloud::MessagesApi* | [**send_message**](docs/MessagesApi.md#send_message) | **POST** /messages | Send Message
*ArtikCloud::MonetizationApi* | [**create_pricing_tiers**](docs/MonetizationApi.md#create_pricing_tiers) | **POST** /pricing/devicetypes/{dtid}/pricingtiers | Define devicetype's pricing tiers.
*ArtikCloud::MonetizationApi* | [**get_pricing_tiers**](docs/MonetizationApi.md#get_pricing_tiers) | **GET** /pricing/devices/{did}/pricingtiers | Get a device's pricing tiers
*ArtikCloud::MonetizationApi* | [**get_the__pricing_tiers**](docs/MonetizationApi.md#get_the__pricing_tiers) | **GET** /pricing/devicetypes/{dtid}/pricingtiers | Get devicetype's pricing tiers.
*ArtikCloud::MonetizationApi* | [**get_upgrade_path**](docs/MonetizationApi.md#get_upgrade_path) | **GET** /pricing/devices/{did}/revenueshare/upgradepath | Get upgrade path
*ArtikCloud::MonetizationApi* | [**set_pricing_tier**](docs/MonetizationApi.md#set_pricing_tier) | **PUT** /pricing/devices/{did}/pricingtiers | Set a device's pricing tier
*ArtikCloud::RegistrationsApi* | [**confirm_user**](docs/RegistrationsApi.md#confirm_user) | **PUT** /devices/registrations/pin | Confirm User
*ArtikCloud::RegistrationsApi* | [**get_request_status_for_user**](docs/RegistrationsApi.md#get_request_status_for_user) | **GET** /devices/registrations/{requestId}/status | Get Request Status For User
*ArtikCloud::RegistrationsApi* | [**unregister_device**](docs/RegistrationsApi.md#unregister_device) | **DELETE** /devices/{deviceId}/registrations | Unregister Device
*ArtikCloud::RulesApi* | [**create_rule**](docs/RulesApi.md#create_rule) | **POST** /rules | Create Rule
*ArtikCloud::RulesApi* | [**delete_rule**](docs/RulesApi.md#delete_rule) | **DELETE** /rules/{ruleId} | Delete Rule
*ArtikCloud::RulesApi* | [**get_rule**](docs/RulesApi.md#get_rule) | **GET** /rules/{ruleId} | Get Rule
*ArtikCloud::RulesApi* | [**update_rule**](docs/RulesApi.md#update_rule) | **PUT** /rules/{ruleId} | Update Rule
*ArtikCloud::SubscriptionsApi* | [**create_subscription**](docs/SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create Subscription
*ArtikCloud::SubscriptionsApi* | [**delete_subscription**](docs/SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{subId} | Delete Subscription
*ArtikCloud::SubscriptionsApi* | [**get_all_subscriptions**](docs/SubscriptionsApi.md#get_all_subscriptions) | **GET** /subscriptions | Get All Subscriptions
*ArtikCloud::SubscriptionsApi* | [**get_messages**](docs/SubscriptionsApi.md#get_messages) | **GET** /notifications/{notifId}/messages | Get Messages
*ArtikCloud::SubscriptionsApi* | [**get_subscription**](docs/SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{subId} | Get Subscription
*ArtikCloud::SubscriptionsApi* | [**validate_subscription**](docs/SubscriptionsApi.md#validate_subscription) | **POST** /subscriptions/{subId}/validate | Validate Subscription
*ArtikCloud::TagsApi* | [**get_tag_categories**](docs/TagsApi.md#get_tag_categories) | **GET** /tags/categories | Get all categories
*ArtikCloud::TagsApi* | [**get_tag_suggestions**](docs/TagsApi.md#get_tag_suggestions) | **GET** /tags/suggestions | Get tag suggestions
*ArtikCloud::TagsApi* | [**get_tags_by_categories**](docs/TagsApi.md#get_tags_by_categories) | **GET** /tags | Get all tags of categories
*ArtikCloud::TokensApi* | [**check_token**](docs/TokensApi.md#check_token) | **POST** /accounts/checkToken | Check Token
*ArtikCloud::TokensApi* | [**refresh_token**](docs/TokensApi.md#refresh_token) | **POST** /accounts/token | Refresh Token
*ArtikCloud::TokensApi* | [**token_info**](docs/TokensApi.md#token_info) | **GET** /accounts/tokenInfo | Token Info
*ArtikCloud::UsersApi* | [**create_user_properties**](docs/UsersApi.md#create_user_properties) | **POST** /users/{userId}/properties | Create User Application Properties
*ArtikCloud::UsersApi* | [**delete_user_properties**](docs/UsersApi.md#delete_user_properties) | **DELETE** /users/{userId}/properties | Delete User Application Properties
*ArtikCloud::UsersApi* | [**get_self**](docs/UsersApi.md#get_self) | **GET** /users/self | Get Current User Profile
*ArtikCloud::UsersApi* | [**get_user_device_types**](docs/UsersApi.md#get_user_device_types) | **GET** /users/{userId}/devicetypes | Get User Device Types
*ArtikCloud::UsersApi* | [**get_user_devices**](docs/UsersApi.md#get_user_devices) | **GET** /users/{userId}/devices | Get User Devices
*ArtikCloud::UsersApi* | [**get_user_properties**](docs/UsersApi.md#get_user_properties) | **GET** /users/{userId}/properties | Get User application properties
*ArtikCloud::UsersApi* | [**get_user_rules**](docs/UsersApi.md#get_user_rules) | **GET** /users/{userId}/rules | Get User Rules
*ArtikCloud::UsersApi* | [**list_all_shares_for_user**](docs/UsersApi.md#list_all_shares_for_user) | **GET** /users/{userId}/shares | Get User shares
*ArtikCloud::UsersApi* | [**update_user_properties**](docs/UsersApi.md#update_user_properties) | **PUT** /users/{userId}/properties | Update User Application Properties
*ArtikCloud::WhitelistingApi* | [**delete_vdid**](docs/WhitelistingApi.md#delete_vdid) | **DELETE** /devicetypes/{dtid}/whitelist/{vdid} | Delete a vdid from the devicetype whitelist.
*ArtikCloud::WhitelistingApi* | [**delete_whitelist_certificate**](docs/WhitelistingApi.md#delete_whitelist_certificate) | **DELETE** /devicetypes/{dtid}/whitelist/certificates/{cid} | Delete a whitelist certificate associated with a devicetype.
*ArtikCloud::WhitelistingApi* | [**enable_whitelist**](docs/WhitelistingApi.md#enable_whitelist) | **PUT** /devicetypes/:dtid/whitelist/enable | Enable or disble whitelist feature of a device type
*ArtikCloud::WhitelistingApi* | [**get_rejected_row_list**](docs/WhitelistingApi.md#get_rejected_row_list) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/rejectedRows | Get the list of rejected rows for an uploaded CSV file.
*ArtikCloud::WhitelistingApi* | [**get_upload_status**](docs/WhitelistingApi.md#get_upload_status) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/status | Get the status of a uploaded CSV file.
*ArtikCloud::WhitelistingApi* | [**get_whitelist**](docs/WhitelistingApi.md#get_whitelist) | **GET** /devicetypes/{dtid}/whitelist | Get whitelisted vdids of a device type.
*ArtikCloud::WhitelistingApi* | [**get_whitelist_certificate**](docs/WhitelistingApi.md#get_whitelist_certificate) | **GET** /devicetypes/{dtid}/whitelist/certificates | Get whitelist certificate of device type.
*ArtikCloud::WhitelistingApi* | [**get_whitelist_status**](docs/WhitelistingApi.md#get_whitelist_status) | **GET** /devicetypes/{dtid}/whitelist/status | Get the status of whitelist feature (enabled/disabled) of a device type.
*ArtikCloud::WhitelistingApi* | [**upload_csv**](docs/WhitelistingApi.md#upload_csv) | **POST** /devicetypes/{dtid}/whitelist | Upload a CSV file related to the Device Type.


## Documentation for Models

 - [ArtikCloud::AckEnvelope](docs/AckEnvelope.md)
 - [ArtikCloud::Acknowledgement](docs/Acknowledgement.md)
 - [ArtikCloud::Action](docs/Action.md)
 - [ArtikCloud::ActionArray](docs/ActionArray.md)
 - [ArtikCloud::ActionDetails](docs/ActionDetails.md)
 - [ArtikCloud::ActionDetailsArray](docs/ActionDetailsArray.md)
 - [ArtikCloud::ActionIn](docs/ActionIn.md)
 - [ArtikCloud::ActionOut](docs/ActionOut.md)
 - [ArtikCloud::Actions](docs/Actions.md)
 - [ArtikCloud::AggregateData](docs/AggregateData.md)
 - [ArtikCloud::AggregatesHistogramData](docs/AggregatesHistogramData.md)
 - [ArtikCloud::AggregatesHistogramResponse](docs/AggregatesHistogramResponse.md)
 - [ArtikCloud::AggregatesResponse](docs/AggregatesResponse.md)
 - [ArtikCloud::AppProperties](docs/AppProperties.md)
 - [ArtikCloud::CertificateData](docs/CertificateData.md)
 - [ArtikCloud::CertificateEnvelope](docs/CertificateEnvelope.md)
 - [ArtikCloud::CertificateFields](docs/CertificateFields.md)
 - [ArtikCloud::CertificateId](docs/CertificateId.md)
 - [ArtikCloud::CheckTokenMessage](docs/CheckTokenMessage.md)
 - [ArtikCloud::CheckTokenResponse](docs/CheckTokenResponse.md)
 - [ArtikCloud::ContactInfo](docs/ContactInfo.md)
 - [ArtikCloud::Device](docs/Device.md)
 - [ArtikCloud::DeviceArray](docs/DeviceArray.md)
 - [ArtikCloud::DeviceEnvelope](docs/DeviceEnvelope.md)
 - [ArtikCloud::DevicePricingTier](docs/DevicePricingTier.md)
 - [ArtikCloud::DevicePricingTierEnvelope](docs/DevicePricingTierEnvelope.md)
 - [ArtikCloud::DevicePricingTierRequest](docs/DevicePricingTierRequest.md)
 - [ArtikCloud::DevicePricingTiers](docs/DevicePricingTiers.md)
 - [ArtikCloud::DevicePricingTiersEnvelope](docs/DevicePricingTiersEnvelope.md)
 - [ArtikCloud::DeviceRegCompleteRequest](docs/DeviceRegCompleteRequest.md)
 - [ArtikCloud::DeviceRegConfirmUserRequest](docs/DeviceRegConfirmUserRequest.md)
 - [ArtikCloud::DeviceRegConfirmUserResponse](docs/DeviceRegConfirmUserResponse.md)
 - [ArtikCloud::DeviceRegConfirmUserResponseEnvelope](docs/DeviceRegConfirmUserResponseEnvelope.md)
 - [ArtikCloud::DeviceRegStatusResponse](docs/DeviceRegStatusResponse.md)
 - [ArtikCloud::DeviceRegStatusResponseEnvelope](docs/DeviceRegStatusResponseEnvelope.md)
 - [ArtikCloud::DeviceShareInfo](docs/DeviceShareInfo.md)
 - [ArtikCloud::DeviceSharing](docs/DeviceSharing.md)
 - [ArtikCloud::DeviceSharingArray](docs/DeviceSharingArray.md)
 - [ArtikCloud::DeviceSharingEnvelope](docs/DeviceSharingEnvelope.md)
 - [ArtikCloud::DeviceSharingId](docs/DeviceSharingId.md)
 - [ArtikCloud::DeviceStatus](docs/DeviceStatus.md)
 - [ArtikCloud::DeviceStatusBatch](docs/DeviceStatusBatch.md)
 - [ArtikCloud::DeviceStatusData](docs/DeviceStatusData.md)
 - [ArtikCloud::DeviceStatusPut](docs/DeviceStatusPut.md)
 - [ArtikCloud::DeviceStatusPutData](docs/DeviceStatusPutData.md)
 - [ArtikCloud::DeviceTask](docs/DeviceTask.md)
 - [ArtikCloud::DeviceTaskUpdateRequest](docs/DeviceTaskUpdateRequest.md)
 - [ArtikCloud::DeviceTaskUpdateResponse](docs/DeviceTaskUpdateResponse.md)
 - [ArtikCloud::DeviceToken](docs/DeviceToken.md)
 - [ArtikCloud::DeviceTokenEnvelope](docs/DeviceTokenEnvelope.md)
 - [ArtikCloud::DeviceType](docs/DeviceType.md)
 - [ArtikCloud::DeviceTypeArray](docs/DeviceTypeArray.md)
 - [ArtikCloud::DeviceTypeEnvelope](docs/DeviceTypeEnvelope.md)
 - [ArtikCloud::DeviceTypeInfo](docs/DeviceTypeInfo.md)
 - [ArtikCloud::DeviceTypeInfoEnvelope](docs/DeviceTypeInfoEnvelope.md)
 - [ArtikCloud::DeviceTypePricingList](docs/DeviceTypePricingList.md)
 - [ArtikCloud::DeviceTypePricingTier](docs/DeviceTypePricingTier.md)
 - [ArtikCloud::DeviceTypePricingTiersEnvelope](docs/DeviceTypePricingTiersEnvelope.md)
 - [ArtikCloud::DeviceTypeUpdateInput](docs/DeviceTypeUpdateInput.md)
 - [ArtikCloud::DeviceTypesEnvelope](docs/DeviceTypesEnvelope.md)
 - [ArtikCloud::DeviceTypesInfo](docs/DeviceTypesInfo.md)
 - [ArtikCloud::DeviceTypesInfoEnvelope](docs/DeviceTypesInfoEnvelope.md)
 - [ArtikCloud::DevicesEnvelope](docs/DevicesEnvelope.md)
 - [ArtikCloud::ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ArtikCloud::EventFeedData](docs/EventFeedData.md)
 - [ArtikCloud::ExportData](docs/ExportData.md)
 - [ArtikCloud::ExportDataArray](docs/ExportDataArray.md)
 - [ArtikCloud::ExportHistoryResponse](docs/ExportHistoryResponse.md)
 - [ArtikCloud::ExportNormalizedMessagesResponse](docs/ExportNormalizedMessagesResponse.md)
 - [ArtikCloud::ExportRequest](docs/ExportRequest.md)
 - [ArtikCloud::ExportRequestData](docs/ExportRequestData.md)
 - [ArtikCloud::ExportRequestInfo](docs/ExportRequestInfo.md)
 - [ArtikCloud::ExportRequestResponse](docs/ExportRequestResponse.md)
 - [ArtikCloud::ExportResponse](docs/ExportResponse.md)
 - [ArtikCloud::ExportStatusResponse](docs/ExportStatusResponse.md)
 - [ArtikCloud::FieldPath](docs/FieldPath.md)
 - [ArtikCloud::FieldPresence](docs/FieldPresence.md)
 - [ArtikCloud::FieldPresenceEnvelope](docs/FieldPresenceEnvelope.md)
 - [ArtikCloud::FieldsActions](docs/FieldsActions.md)
 - [ArtikCloud::ManifestProperties](docs/ManifestProperties.md)
 - [ArtikCloud::ManifestPropertiesEnvelope](docs/ManifestPropertiesEnvelope.md)
 - [ArtikCloud::ManifestVersions](docs/ManifestVersions.md)
 - [ArtikCloud::ManifestVersionsEnvelope](docs/ManifestVersionsEnvelope.md)
 - [ArtikCloud::Message](docs/Message.md)
 - [ArtikCloud::MessageAction](docs/MessageAction.md)
 - [ArtikCloud::MessageID](docs/MessageID.md)
 - [ArtikCloud::MessageIDEnvelope](docs/MessageIDEnvelope.md)
 - [ArtikCloud::MessageIn](docs/MessageIn.md)
 - [ArtikCloud::MessageOut](docs/MessageOut.md)
 - [ArtikCloud::MetadataEnvelope](docs/MetadataEnvelope.md)
 - [ArtikCloud::MetadataPropertiesEnvelope](docs/MetadataPropertiesEnvelope.md)
 - [ArtikCloud::MetadataQueryEnvelope](docs/MetadataQueryEnvelope.md)
 - [ArtikCloud::NonEmptyString](docs/NonEmptyString.md)
 - [ArtikCloud::NormalizedAction](docs/NormalizedAction.md)
 - [ArtikCloud::NormalizedActionsEnvelope](docs/NormalizedActionsEnvelope.md)
 - [ArtikCloud::NormalizedMessage](docs/NormalizedMessage.md)
 - [ArtikCloud::NormalizedMessagesEnvelope](docs/NormalizedMessagesEnvelope.md)
 - [ArtikCloud::NotifMessage](docs/NotifMessage.md)
 - [ArtikCloud::NotifMessageArray](docs/NotifMessageArray.md)
 - [ArtikCloud::NotifMessagesResponse](docs/NotifMessagesResponse.md)
 - [ArtikCloud::OutputRule](docs/OutputRule.md)
 - [ArtikCloud::PresenceEnvelope](docs/PresenceEnvelope.md)
 - [ArtikCloud::PresenceModel](docs/PresenceModel.md)
 - [ArtikCloud::PropertiesEnvelope](docs/PropertiesEnvelope.md)
 - [ArtikCloud::RefreshTokenResponse](docs/RefreshTokenResponse.md)
 - [ArtikCloud::RegisterMessage](docs/RegisterMessage.md)
 - [ArtikCloud::RejectedCSVRow](docs/RejectedCSVRow.md)
 - [ArtikCloud::RejectedCSVRowsEnvelope](docs/RejectedCSVRowsEnvelope.md)
 - [ArtikCloud::RuleArray](docs/RuleArray.md)
 - [ArtikCloud::RuleCreationInfo](docs/RuleCreationInfo.md)
 - [ArtikCloud::RuleEnvelope](docs/RuleEnvelope.md)
 - [ArtikCloud::RuleError](docs/RuleError.md)
 - [ArtikCloud::RuleUpdateInfo](docs/RuleUpdateInfo.md)
 - [ArtikCloud::RuleWarningOutput](docs/RuleWarningOutput.md)
 - [ArtikCloud::RulesEnvelope](docs/RulesEnvelope.md)
 - [ArtikCloud::SnapshotResponse](docs/SnapshotResponse.md)
 - [ArtikCloud::SnapshotResponses](docs/SnapshotResponses.md)
 - [ArtikCloud::SnapshotsResponseEnvelope](docs/SnapshotsResponseEnvelope.md)
 - [ArtikCloud::Subscription](docs/Subscription.md)
 - [ArtikCloud::SubscriptionArray](docs/SubscriptionArray.md)
 - [ArtikCloud::SubscriptionEnvelope](docs/SubscriptionEnvelope.md)
 - [ArtikCloud::SubscriptionInfo](docs/SubscriptionInfo.md)
 - [ArtikCloud::SubscriptionsEnvelope](docs/SubscriptionsEnvelope.md)
 - [ArtikCloud::Tag](docs/Tag.md)
 - [ArtikCloud::TagArray](docs/TagArray.md)
 - [ArtikCloud::TagsEnvelope](docs/TagsEnvelope.md)
 - [ArtikCloud::Task](docs/Task.md)
 - [ArtikCloud::TaskByDid](docs/TaskByDid.md)
 - [ArtikCloud::TaskByDidList](docs/TaskByDidList.md)
 - [ArtikCloud::TaskByDidListEnvelope](docs/TaskByDidListEnvelope.md)
 - [ArtikCloud::TaskEnvelope](docs/TaskEnvelope.md)
 - [ArtikCloud::TaskHistory](docs/TaskHistory.md)
 - [ArtikCloud::TaskHistoryList](docs/TaskHistoryList.md)
 - [ArtikCloud::TaskList](docs/TaskList.md)
 - [ArtikCloud::TaskListEnvelope](docs/TaskListEnvelope.md)
 - [ArtikCloud::TaskParameters](docs/TaskParameters.md)
 - [ArtikCloud::TaskRequest](docs/TaskRequest.md)
 - [ArtikCloud::TaskStatus](docs/TaskStatus.md)
 - [ArtikCloud::TaskStatusCounts](docs/TaskStatusCounts.md)
 - [ArtikCloud::TaskStatuses](docs/TaskStatuses.md)
 - [ArtikCloud::TaskStatusesEnvelope](docs/TaskStatusesEnvelope.md)
 - [ArtikCloud::TaskStatusesHistoryEnvelope](docs/TaskStatusesHistoryEnvelope.md)
 - [ArtikCloud::TaskUpdateRequest](docs/TaskUpdateRequest.md)
 - [ArtikCloud::TaskUpdateResponse](docs/TaskUpdateResponse.md)
 - [ArtikCloud::TasksStatusCounts](docs/TasksStatusCounts.md)
 - [ArtikCloud::Tier](docs/Tier.md)
 - [ArtikCloud::Token](docs/Token.md)
 - [ArtikCloud::TokenInfo](docs/TokenInfo.md)
 - [ArtikCloud::TokenInfoSuccessResponse](docs/TokenInfoSuccessResponse.md)
 - [ArtikCloud::TokenRequest](docs/TokenRequest.md)
 - [ArtikCloud::TokenResponse](docs/TokenResponse.md)
 - [ArtikCloud::UnregisterDeviceResponse](docs/UnregisterDeviceResponse.md)
 - [ArtikCloud::UnregisterDeviceResponseEnvelope](docs/UnregisterDeviceResponseEnvelope.md)
 - [ArtikCloud::UpdateParameters](docs/UpdateParameters.md)
 - [ArtikCloud::UpgradePath](docs/UpgradePath.md)
 - [ArtikCloud::UpgradePathEnvelope](docs/UpgradePathEnvelope.md)
 - [ArtikCloud::UpgradePathUserToken](docs/UpgradePathUserToken.md)
 - [ArtikCloud::UpgradePathUserTokenEnvelope](docs/UpgradePathUserTokenEnvelope.md)
 - [ArtikCloud::UploadIdEnvelope](docs/UploadIdEnvelope.md)
 - [ArtikCloud::UploadStatusEnvelope](docs/UploadStatusEnvelope.md)
 - [ArtikCloud::User](docs/User.md)
 - [ArtikCloud::UserEnvelope](docs/UserEnvelope.md)
 - [ArtikCloud::ValidationCallbackInfo](docs/ValidationCallbackInfo.md)
 - [ArtikCloud::ValidityPeriod](docs/ValidityPeriod.md)
 - [ArtikCloud::WebSocketError](docs/WebSocketError.md)
 - [ArtikCloud::Whitelist](docs/Whitelist.md)
 - [ArtikCloud::WhitelistEnvelope](docs/WhitelistEnvelope.md)
 - [ArtikCloud::WhitelistResultEnvelope](docs/WhitelistResultEnvelope.md)



## Documentation for Authorization


### artikcloud_oauth

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: https://accounts.artik.cloud/authorize
- **Scopes**:
  - read:artikcloud: Read from ARTIK Cloud
  - write:artikcloud: Write from ARTIK Cloud

More about ARTIK Cloud
-------------------------

If you are not familiar with ARTIK Cloud, we have extensive documentation at https://developer.artik.cloud/documentation

The full ARTIK Cloud API specification can be found at https://developer.artik.cloud/documentation/api-reference/

Check out advanced sample applications at https://developer.artik.cloud/documentation/samples/

To create and manage your services and devices on ARTIK Cloud, create an account at https://developer.artik.cloud

Also see the ARTIK Cloud blog for tutorials, updates, and more: http://artik.io/blog

License and Copyright
---------------------

Licensed under the Apache License. See [LICENSE](https://github.com/artikcloud/artikcloud-ruby/blob/master/LICENSE).

Copyright (c) 2017 Samsung Electronics Co., Ltd.
