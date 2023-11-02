=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'

# Unit tests for TricentisTmApi::TestCasesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TestCasesApi' do
  before do
    # run before each test
    @instance = TricentisTmApi::TestCasesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TestCasesApi' do
    it 'should create an instance of TestCasesApi' do
      expect(@instance).to be_instance_of(TricentisTmApi::TestCasesApi)
    end
  end

  # unit tests for v1_projects_project_key_jobs_job_id_get
  # Query job status.
  # ## Query the status of an asynchronous job to create or import test case(s).
  # @param job_id The job ID returned from the import request endpoint.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'v1_projects_project_key_jobs_job_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_cases_get
  # Read test case(s).
  # ## Get or retrieve information from test case(s).                #### Body fields:  * **jiraFields**: a comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.  * **ttmFields**: a comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :jira_fields A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  # @option opts [String] :ttm_fields A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  # @option opts [Integer] :offset Numeric value that determines that the result list will start from result #N (zero based)
  # @option opts [Integer] :limit Numeric value that determines that maximum N results will be returned
  # @return [InlineResponse2002]
  describe 'v1_projects_project_key_test_cases_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_cases_key_automation_put
  # Add or update automation content for a test case.
  # ## Add or update automation content and details for a test case.                #### Body fields:                * **name**: The name of the automation for the test case.  * **externalId** _(optional)_: The external Id of the automated test from the external automation system.  * **key**: The Jira key of the test case .
  # @param key The Jira issue key for the Test Case.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [KeyAutomationBody] :body API body payload to update a test case and add automation.
  # @option opts [BOOLEAN] :confirmation &lt;br&gt;Changing a test case from Manual to Automated overwrites your precondition and test steps.  &lt;br&gt; Select True to confirm that you want to delete the precondition and test steps from the test case.
  # @return [nil]
  describe 'v1_projects_project_key_test_cases_key_automation_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_cases_key_delete
  # Delete test case(s).
  # ## Delete test case(s).
  # @param key The Jira id or key of the test.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_projects_project_key_test_cases_key_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_cases_key_put
  # Update test case(s).
  # ## Update existing test case(s).
  # @param key The jira key of the test.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [TestcasesKeyBody] :body The data to update in the test.
  # @return [InlineResponse2004]
  describe 'v1_projects_project_key_test_cases_key_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_projects_project_key_test_cases_post
  # Create test case(s).
  # ## Create test case(s).                #### Body fields:                * **folder** _(optional)_: Specify the folder path where you want to save the test case. A path is a string of concatenated parts separated by a slash \&quot;/\&quot;.  If you don&#x27;t specify a folder path, the test case saves in the \&quot;All tests\&quot; folder. Do not specify both the folder and the folderID, or the request will fail.  * **folderId** _(optional)_: Specify a unique ID associated with the folder in the TTM database, which specifies where the test case should be saved. Do not specify both the folder and the folderID, or the request will fail.  * **callbackUrl** _(optional)_: Specify a URL that will recevie status of the request (The URL will serve as POST endpoint in the user side).  * **tests**: Provide a list of tests with the following values:      * **fields**: The native Jira fields in a test case. The following fields are available:          * **summary**: The Summary of the test case in Jira.          * **description** _(optional)_: The Description of the test case in Jira.          * **status** _(optional)_: The Status of the test case in Jira.          * **priority** _(optional)_: The Priority of the test case in Jira.          * **labels** _(optional)_: The Labels of the test case in Jira.      * **ttmFields**: These are the Jira fields provided by the Tricentis Test Management for Jira plugin. The following fields are available:          * **precondition** _(optional)_: The precondition for a test case.          * **steps** _(optional)_: The list of steps for the test case.              * **description** _(optional)_: Step description.              * **expectedResult** _(optional)_: Step expected result.              * **data** _(optional)_: Step data.              * **testCaseKey** _(optional)_: test case key, when set the step will call the test case and other step fields will be ignored.      * **testType**: Can be one of the following: \&quot;Manual\&quot;, \&quot;Automated\&quot;      * **requirements** _(optional)_: List of issues keys (from Jira) that should be linked as requirements.      * **customFields** _(optional)_: The custom Jira fields in a test case.      * **folder** _(optional)_: Specify the folder path where you want to save the test case. A path is a string of concatenated parts separated by a slash \&quot;/\&quot;.  If you don&#x27;t specify a folder path, the test case saves in the \&quot;All tests\&quot; folder. Do not specify both the folder and the folderID, or the request will fail. If you do not specify the folder in this field, the request uses the folder specified at the root level.      * **folderId** _(optional)_: Specify a unique ID associated with the folder in the TTM database, which specifies where the test case should be saved. Do not specify both the folder and the folderID, or the request will fail. If you do not specify the folderId in this field, the request uses the folderId specified at the root level.      * **automation** _(optional)_: Automation data. Provide the following values for your test case:          * **name**: The name of your external automation system. For example, Testim.          * **externalId** _(optional)_: The ID of the test in your external automation platform.          * **content** _(optional)_: The content your automation system supplies to represent the test.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [ProjectkeyTestcasesBody] :body External API body payload that describes the tests to create.
  # @return [InlineResponse202]
  describe 'v1_projects_project_key_test_cases_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_test_cases_search_post
  # Search test case(s).
  # ## Search for test case(s) using JQL.                #### Body fields:                * **jql** _(optional)_: The Jira Query Language (JQL) query to search.  * **jiraFields**: A comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.  * **ttmFields**: A comma-separated list of TTM fields to return for each issue. Use this to retrieve a subset of fields.
  # @param [Hash] opts the optional parameters
  # @option opts [TestcasesSearchBody] :body The request body.
  # @option opts [String] :jira_fields A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  # @option opts [String] :ttm_fields A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  # @option opts [Integer] :offset Numeric value that determines that the result list will start from result #N (zero based)
  # @option opts [Integer] :limit Numeric value that determines that maximum N results will be returned
  # @return [InlineResponse2002]
  describe 'v1_test_cases_search_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
