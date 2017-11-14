=begin
#ARTIK Cloud API

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::RegistrationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RegistrationsApi' do
  before do
    # run before each test
    @instance = ArtikCloud::RegistrationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RegistrationsApi' do
    it 'should create an instact of RegistrationsApi' do
      expect(@instance).to be_instance_of(ArtikCloud::RegistrationsApi)
    end
  end

  # unit tests for confirm_user
  # Confirm User
  # This call updates the registration request issued earlier by associating it with an authenticated user and captures all additional information required to add a new device.
  # @param registration_info Device Registration information.
  # @param [Hash] opts the optional parameters
  # @return [DeviceRegConfirmUserResponseEnvelope]
  describe 'confirm_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_request_status_for_user
  # Get Request Status For User
  # This call checks the status of the request so users can poll and know when registration is complete.
  # @param request_id Request ID.
  # @param [Hash] opts the optional parameters
  # @return [DeviceRegStatusResponseEnvelope]
  describe 'get_request_status_for_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unregister_device
  # Unregister Device
  # This call clears any associations from the secure device registration.
  # @param device_id Device ID.
  # @param [Hash] opts the optional parameters
  # @return [UnregisterDeviceResponseEnvelope]
  describe 'unregister_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end