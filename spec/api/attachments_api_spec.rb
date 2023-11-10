=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for TricentisTmApi::AttachmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AttachmentsApi' do
  before do
    # run before each test
    @api_instance = TricentisTmApi::AttachmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AttachmentsApi' do
    it 'should create an instance of AttachmentsApi' do
      expect(@api_instance).to be_instance_of(TricentisTmApi::AttachmentsApi)
    end
  end

  # unit tests for v1_projects_project_key_test_runs_attachments_id_put
  # Query if attachment is uploaded to storage.
  # ## Query if the attachment file was successfully uploaded to storage.                Use this to confirm the following:  * Upload information was received from **POST** v1/projects/{project-key}/test-runs/{test-run-key}/attachments  * The file successfully uploaded to storage as binary data.
  # @param id Attachment Id.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_projects_project_key_test_runs_attachments_id_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_projects_project_key_test_runs_test_run_key_attachments_post
  # Upload attachment to a test run.
  # ## Initiate the attachment upload process for a test run.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
  # @param test_run_key Test Run Key.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
  # @return [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response]
  describe 'v1_projects_project_key_test_runs_test_run_key_attachments_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post
  # Upload attachment to a test run step.
  # ## Initiate the attachment upload process for a test run step.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
  # @param test_run_key Test Run Key.
  # @param step_number Step index.
  # @param project_key 
  # @param [Hash] opts the optional parameters
  # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
  # @return [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response]
  describe 'v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
