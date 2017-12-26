=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = ArtikCloud::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instact of UsersApi' do
      expect(@instance).to be_instance_of(ArtikCloud::UsersApi)
    end
  end

  # unit tests for create_user_properties
  # Create User Application Properties
  # Create application properties for a user
  # @param user_id User Id
  # @param properties Properties to be updated
  # @param [Hash] opts the optional parameters
  # @option opts [String] :aid Application ID
  # @return [PropertiesEnvelope]
  describe 'create_user_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_properties
  # Delete User Application Properties
  # Deletes a user&#39;s application properties
  # @param user_id User Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :aid Application ID
  # @return [PropertiesEnvelope]
  describe 'delete_user_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_self
  # Get Current User Profile
  # Get&#39;s the current user&#39;s profile
  # @param [Hash] opts the optional parameters
  # @return [UserEnvelope]
  describe 'get_self test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_device_types
  # Get User Device Types
  # Retrieve User&#39;s Device Types
  # @param user_id User ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Offset for pagination.
  # @option opts [Integer] :count Desired count of items in the result set
  # @option opts [BOOLEAN] :include_shared Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users.
  # @return [DeviceTypesEnvelope]
  describe 'get_user_device_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_devices
  # Get User Devices
  # Retrieve User&#39;s Devices
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Offset for pagination.
  # @option opts [Integer] :count Desired count of items in the result set
  # @option opts [BOOLEAN] :include_properties Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users.
  # @option opts [String] :owner Return owned and/or shared devices. Default to ALL.
  # @option opts [BOOLEAN] :include_share_info Include share info
  # @option opts [String] :dtid Return only devices of this device type. If empty, assumes all device types allowed by the authorization.
  # @return [DevicesEnvelope]
  describe 'get_user_devices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_properties
  # Get User application properties
  # Get application properties of a user
  # @param user_id User Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :aid Application ID
  # @return [PropertiesEnvelope]
  describe 'get_user_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_rules
  # Get User Rules
  # Retrieve User&#39;s Rules
  # @param user_id User ID.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_disabled Exclude disabled rules in the result.
  # @option opts [Integer] :count Desired count of items in the result set.
  # @option opts [Integer] :offset Offset for pagination.
  # @option opts [String] :owner Rule owner
  # @return [RulesEnvelope]
  describe 'get_user_rules test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_shares_for_user
  # Get User shares
  # Get User shares
  # @param user_id User ID.
  # @param filter filter
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Desired count of items in the result set.
  # @option opts [Integer] :offset Offset for pagination.
  # @return [DeviceSharingEnvelope]
  describe 'list_all_shares_for_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_properties
  # Update User Application Properties
  # Updates application properties of a user
  # @param user_id User Id
  # @param properties Properties to be updated
  # @param [Hash] opts the optional parameters
  # @option opts [String] :aid Application ID
  # @return [PropertiesEnvelope]
  describe 'update_user_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
