=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::TagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @instance = ArtikCloud::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instact of TagsApi' do
      expect(@instance).to be_instance_of(ArtikCloud::TagsApi)
    end
  end

  # unit tests for get_tag_categories
  # Get all categories
  # Get all tags marked as categories
  # @param [Hash] opts the optional parameters
  # @return [TagsEnvelope]
  describe 'get_tag_categories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag_suggestions
  # Get tag suggestions
  # Get tag suggestions for applications, device types that have been most used with a group of tags.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :entity_type Entity type name.
  # @option opts [String] :tags Comma separated list of tags.
  # @option opts [String] :name Name of tags used for type ahead.
  # @option opts [Integer] :count Number of results to return. Max 10.
  # @return [TagsEnvelope]
  describe 'get_tag_suggestions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tags_by_categories
  # Get all tags of categories
  # Get all tags related to the list of categories
  # @param [Hash] opts the optional parameters
  # @option opts [String] :categories Comma separated list of categories.
  # @return [TagsEnvelope]
  describe 'get_tags_by_categories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
