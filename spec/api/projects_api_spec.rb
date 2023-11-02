=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'

# Unit tests for TricentisTmApi::ProjectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProjectsApi' do
  before do
    # run before each test
    @instance = TricentisTmApi::ProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectsApi' do
    it 'should create an instance of ProjectsApi' do
      expect(@instance).to be_instance_of(TricentisTmApi::ProjectsApi)
    end
  end

  # unit tests for v1_projects_get
  # Get Jira project(s).
  # ## Get or retrieve Jira project(s).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keys keys.
  # @option opts [Integer] :offset Numeric value that determines that the result list will start from result #N (zero based)
  # @option opts [Integer] :limit Numeric value that determines that maximum N results will be returned
  # @return [Array<InlineResponse2007>]
  describe 'v1_projects_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end