=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::DevicesManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DevicesManagementApi' do
  before do
    # run before each test
    @instance = ArtikCloud::DevicesManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DevicesManagementApi' do
    it 'should create an instact of DevicesManagementApi' do
      expect(@instance).to be_instance_of(ArtikCloud::DevicesManagementApi)
    end
  end

  # unit tests for create_tasks
  # Create a new task for one or more devices
  # Create a new task for one or more devices
  # @param task_payload Task object to be created
  # @param [Hash] opts the optional parameters
  # @return [TaskEnvelope]
  describe 'create_tasks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_server_properties
  # Deletes a device&#39;s properties.
  # Deletes a device&#39;s properties.
  # @param did Device ID.
  # @param [Hash] opts the optional parameters
  # @return [MetadataEnvelope]
  describe 'delete_server_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_by_did
  # Returns the list of tasks for a particular device id with optional status filter.
  # Returns the list of tasks for a particular device id with optional status filter.
  # @param did Device ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @option opts [String] :status Status filter. Comma-separated statuses.
  # @option opts [String] :order Sort results by a field. Valid fields: createdOn.
  # @option opts [String] :sort Sort order. Valid values: asc or desc.
  # @return [TaskByDidListEnvelope]
  describe 'get_all_by_did test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_types_info
  # Read a device type device management information.
  # Read a device type device management information.
  # @param dtid Device type ID.
  # @param [Hash] opts the optional parameters
  # @return [DeviceTypesInfoEnvelope]
  describe 'get_device_types_info test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_manifest_properties
  # Get a device type&#39;s device management manifest properties
  # Get a device type&#39;s device management manifest properties
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @return [MetadataPropertiesEnvelope]
  describe 'get_manifest_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_properties
  # Read a device&#39;s properties.
  # Read a device&#39;s properties.
  # @param did Device ID.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_timestamp Include timestamp.
  # @return [MetadataEnvelope]
  describe 'get_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_statuses
  # Returns the details and status of a task id and the individual statuses of each device id in the list.
  # Returns the details and status of a task id and the individual statuses of each device id in the list.
  # @param tid Task ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @option opts [String] :status Status filter. Comma-separated statuses.
  # @option opts [String] :dids Devices filter. Comma-separated device IDs.
  # @return [TaskStatusesEnvelope]
  describe 'get_statuses test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_statuses_history
  # Returns the history of the status changes for a specific task id, or for a specific device id in that task.
  # Returns the history of the status changes for a specific task id, or for a specific device id in that task.
  # @param tid Task ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :did Device ID. Optional.
  # @return [TaskStatusesHistoryEnvelope]
  describe 'get_statuses_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_by_id
  # Returns the details and global status of a specific task id.
  # Returns the details and global status of a specific task id.
  # @param tid Task ID.
  # @param [Hash] opts the optional parameters
  # @return [TaskEnvelope]
  describe 'get_task_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks
  # Returns the all the tasks for a device type.
  # Returns the all the tasks for a device type.
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @option opts [String] :status Status filter. Comma-separated statuses.
  # @option opts [String] :order Sort results by a field. Valid fields: createdOn.
  # @option opts [String] :sort Sort order. Valid values: asc or desc.
  # @return [TaskListEnvelope]
  describe 'get_tasks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for query_properties
  # Query device properties across devices.
  # Query device properties across devices.
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @option opts [String] :filter Query filter. Comma-separated key&#x3D;value pairs
  # @option opts [BOOLEAN] :include_timestamp Include timestamp.
  # @return [MetadataQueryEnvelope]
  describe 'query_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_device_types_info
  # Updates a device type information
  # Updates a device type information
  # @param dtid Device type ID.
  # @param device_type_info Device type info object to be set
  # @param [Hash] opts the optional parameters
  # @return [DeviceTypesInfoEnvelope]
  describe 'update_device_types_info test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_server_properties
  # Updates a device&#39;s server properties.
  # Updates a device&#39;s server properties.
  # @param did Device ID.
  # @param device_properties Device properties object to be set
  # @param [Hash] opts the optional parameters
  # @return [MetadataEnvelope]
  describe 'update_server_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task
  # Updates a task for all devices - For now just allows changing the state to cancelled.
  # Updates a task for all devices - For now just allows changing the state to cancelled.
  # @param tid Task ID.
  # @param task_update_request Task update request
  # @param [Hash] opts the optional parameters
  # @return [TaskUpdateResponse]
  describe 'update_task test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task_for_device
  # Updates a task for a specific device - For now just allows changing the state to cancelled.
  # Updates a task for a specific device - For now just allows changing the state to cancelled.
  # @param tid Task ID.
  # @param did Device ID.
  # @param device_task_update_request Device task update request
  # @param [Hash] opts the optional parameters
  # @return [DeviceTaskUpdateResponse]
  describe 'update_task_for_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
