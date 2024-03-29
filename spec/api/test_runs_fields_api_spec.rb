=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for TricentisTmApi::TestRunsFieldsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TestRunsFieldsApi' do
  before do
    # run before each test
    @api_instance = TricentisTmApi::TestRunsFieldsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TestRunsFieldsApi' do
    it 'should create an instance of TestRunsFieldsApi' do
      expect(@api_instance).to be_instance_of(TricentisTmApi::TestRunsFieldsApi)
    end
  end

  # unit tests for v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete
  # Delete allowed value from scheme.
  # ## Delete allowed value from scheme.  ##### Note: Allowed Scheme names: Environments, Builds.
  # @param scheme_name The scheme name (Environments, Builds).
  # @param allowed_value_name allowedValueName.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_test_runs_scheme_scheme_name_allowed_values_post
  # Add allowed value to scheme.
  # ## Add allowed value to scheme.  ##### Note: Allowed Scheme names: Environments, Builds.  ##### In case of trying to add existing allowed value, it will be ignored (duplicates are not allowed) and the response will be 200.                #### Body fields:  * **allowedValues** _(mandatory)_: Provide a list of allowed values, with each value having the following fields:      * **name** _(mandatory)_: name of the allowed value.      * **description** _(optional)_: allowed value description.
  # @param scheme_name The scheme name (Environments, Builds).
  # @param [Hash] opts the optional parameters
  # @option opts [Array<V1TestRunsSchemeSchemeNameAllowedValuesPostRequestInner>] :v1_test_runs_scheme_scheme_name_allowed_values_post_request_inner allowedValueApiData.
  # @return [nil]
  describe 'v1_test_runs_scheme_scheme_name_allowed_values_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
