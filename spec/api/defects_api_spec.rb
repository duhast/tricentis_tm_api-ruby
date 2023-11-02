=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'

# Unit tests for TricentisTmApi::DefectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefectsApi' do
  before do
    # run before each test
    @instance = TricentisTmApi::DefectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefectsApi' do
    it 'should create an instance of DefectsApi' do
      expect(@instance).to be_instance_of(TricentisTmApi::DefectsApi)
    end
  end

  # unit tests for v1_projects_project_key_test_runs_test_run_key_defects_link_post
  # Link Defects to test run.
  # ## Link defects test run.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.
  # @param test_run_key testRunKey.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<RequirementLinkBody>] :body defects.
  # @option opts [Integer] :step_index stepIndex.
  # @return [Array<InlineResponse2006>]
  describe 'v1_projects_project_key_test_runs_test_run_key_defects_link_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_runs_test_run_key_defects_post
  # Create defects and link to test run.
  # ## Create defects and link to test run.  ##### Note: In case issue type won&#x27;t be provided, default value will be \&quot;Bug\&quot; issue type.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **summary** _(mandatory)_: the defect summary.  * **description** _(optional)_: the defect description.  * **issueType** _(optional)_: the defect issue type (for example: Task, Bug, etc..).
  # @param test_run_key Test Run Key.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<KeyRequirementsBody>] :body defects to create.
  # @option opts [Integer] :step_index stepIndex .
  # @return [Array<InlineResponse2006>]
  describe 'v1_projects_project_key_test_runs_test_run_key_defects_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end