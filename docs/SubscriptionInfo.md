# ArtikCloud::SubscriptionInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aws_region** | **String** | AWS region (if subscriptionType is awsKinesis | [optional] 
**description** | **String** | Description | [optional] 
**aws_key** | **String** | AWS key (if subscriptionType is awsKinesis | [optional] 
**aws_secret** | **String** | AWS secret (if subscriptionType is awsKinesis | [optional] 
**aws_kinesis_stream_name** | **String** | AWS Kinesis stream name (if subscriptionType is awsKinesis | [optional] 
**uid** | **String** | User ID | [optional] 
**message_type** | **String** | Message type | [optional] 
**ddid** | **String** | Destination device ID | [optional] 
**subscription_type** | **String** | Subscription type (either httpCallback or awsKinesis, default to httpCallback) | [optional] 
**name** | **String** | Name | [optional] 
**sdid** | **String** | Source device ID | [optional] 
**callback_url** | **String** | Callback URL | [optional] 
**sdtid** | **String** | Source device type ID | [optional] 


