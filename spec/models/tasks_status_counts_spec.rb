=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ArtikCloud::TasksStatusCounts
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TasksStatusCounts' do
  before do
    # run before each test
    @instance = ArtikCloud::TasksStatusCounts.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TasksStatusCounts' do
    it 'should create an instact of TasksStatusCounts' do
      expect(@instance).to be_instance_of(ArtikCloud::TasksStatusCounts)
    end
  end
  describe 'test attribute "cancelled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "complete"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "processing"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "requested"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
