=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module TricentisTmApi
  class DefectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Link Defects to test run.
    # ## Link defects test run.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.
    # @param test_run_key [String] testRunKey.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step_index stepIndex.
    # @option opts [Array<V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner>] :v1_projects_project_key_test_cases_key_requirement_link_post_request_inner defects.
    # @return [Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>]
    def v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_key, project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info(test_run_key, project_key, opts)
      data
    end

    # Link Defects to test run.
    # ## Link defects test run.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.
    # @param test_run_key [String] testRunKey.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step_index stepIndex.
    # @option opts [Array<V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner>] :v1_projects_project_key_test_cases_key_requirement_link_post_request_inner defects.
    # @return [Array<(Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>, Integer, Hash)>] Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner> data, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info(test_run_key, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_link_post ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_link_post"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_link_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}/defects/link'.sub('{' + 'test-run-key' + '}', CGI.escape(test_run_key.to_s)).sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'stepIndex'] = opts[:'step_index'] if !opts[:'step_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_test_cases_key_requirement_link_post_request_inner'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_link_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefectsApi#v1_projects_project_key_test_runs_test_run_key_defects_link_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create defects and link to test run.
    # ## Create defects and link to test run.  ##### Note: In case issue type won't be provided, default value will be \"Bug\" issue type.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **summary** _(mandatory)_: the defect summary.  * **description** _(optional)_: the defect description.  * **issueType** _(optional)_: the defect issue type (for example: Task, Bug, etc..).
    # @param test_run_key [String] Test Run Key.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step_index stepIndex .
    # @option opts [Array<V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner>] :v1_projects_project_key_test_cases_requirements_post_request_inner defects to create.
    # @return [Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>]
    def v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_key, project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info(test_run_key, project_key, opts)
      data
    end

    # Create defects and link to test run.
    # ## Create defects and link to test run.  ##### Note: In case issue type won&#39;t be provided, default value will be \&quot;Bug\&quot; issue type.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **summary** _(mandatory)_: the defect summary.  * **description** _(optional)_: the defect description.  * **issueType** _(optional)_: the defect issue type (for example: Task, Bug, etc..).
    # @param test_run_key [String] Test Run Key.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step_index stepIndex .
    # @option opts [Array<V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner>] :v1_projects_project_key_test_cases_requirements_post_request_inner defects to create.
    # @return [Array<(Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>, Integer, Hash)>] Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner> data, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info(test_run_key, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_post ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_post"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}/defects'.sub('{' + 'test-run-key' + '}', CGI.escape(test_run_key.to_s)).sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'stepIndex'] = opts[:'step_index'] if !opts[:'step_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_test_cases_requirements_post_request_inner'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"DefectsApi.v1_projects_project_key_test_runs_test_run_key_defects_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefectsApi#v1_projects_project_key_test_runs_test_run_key_defects_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
