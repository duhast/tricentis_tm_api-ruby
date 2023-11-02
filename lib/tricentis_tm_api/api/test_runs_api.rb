=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

module TricentisTmApi
  class TestRunsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create test run(s).
    # ## Create or import test run(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **version** _(optional)_: Specify the version name which the test runs will be under.  If version won't be provided OR version will be equal to unversioned, the test runs will be created under unversioned.  (creating and editing of releases (versions) are managed in Jira).  * **cycleName** _(optional)_: Specify the cycle name which the test runs will be under.  * **includeAttachments** _(optional)_: Specify if to include attachments (default value: false).  Cycle must be provided here or under test runs (for each test runs).  * **testRuns** _(mandatory)_: Provide a list of test runs, with each test having the following fields:      * **testCaseKey** _(mandatory)_: test case key that the test run will be linked to.      * **status** _(mandatory)_: the status of the test run. Status of test runs is defined in JIRA under the admin page.      * **name** _(optional)_: name of the test run.      * **description** _(optional)_: description of the test run.      * **priority** _(mandatory)_: priority of the test run (\"Highes\",\"Low\",etc..).      * **testCategory** _(mandatory)_: The test run category of the test run (\"Functional\" or \"NonFunctional\").      * **testType** _(mandatory)_: the test type of the test run (Manual, Automated).      * **cycleName** _(optional)_: specify the cycle name which the test runs will be under.      Cycle must be provided here or above testRuns in cycleName.      * **assignee** _(optional)_: the username which the test run will be assigned to.      * **executedBy** _(optional)_: the username which the test run is executed by.      * **automation** _(optional)_: the automation content of the test run.      In case TestType is Manual, Automation will be ignore (Manual test run can't contain automation content).          * **name** _(optional)_: the name of automation tool.          * **id** _(optional)_: the id of the test run in the automation tool.          * **content** _(mandatory)_: the test run automation content.      * **plannedStartDate** _(optional)_: the test run planned start date.      * **plannedEndDate** _(optional)_: the test run planned end date.      * **components** _(optional)_: the test runs components.      * **labels** _(optional)_: the test runs labels.      * **steps** _(optional)_: list of steps of the test run.      In case TestType is Automated, and Steps will be provided (Test Run will contain Steps and Automation).          * **status** _(mandatory)_: the status of the test run step.          * **actualResult** _(optional)_: the actual result of the steps.          * **comment** _(optional)_: the test run step's comment.          * **data** _(optional)_: the test run step's data.          * **description** _(optional)_: the test run step's description.          * **expectedResult** _(optional)_: the test run step's expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) 'value' must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectkeyTestrunsBody] :body testRuns.
    # @return [Array<InlineResponse2009>]
    def v1_projects_project_key_test_runs_post(project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_post_with_http_info(project_key, opts)
      data
    end

    # Create test run(s).
    # ## Create or import test run(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **version** _(optional)_: Specify the version name which the test runs will be under.  If version won&#x27;t be provided OR version will be equal to unversioned, the test runs will be created under unversioned.  (creating and editing of releases (versions) are managed in Jira).  * **cycleName** _(optional)_: Specify the cycle name which the test runs will be under.  * **includeAttachments** _(optional)_: Specify if to include attachments (default value: false).  Cycle must be provided here or under test runs (for each test runs).  * **testRuns** _(mandatory)_: Provide a list of test runs, with each test having the following fields:      * **testCaseKey** _(mandatory)_: test case key that the test run will be linked to.      * **status** _(mandatory)_: the status of the test run. Status of test runs is defined in JIRA under the admin page.      * **name** _(optional)_: name of the test run.      * **description** _(optional)_: description of the test run.      * **priority** _(mandatory)_: priority of the test run (\&quot;Highes\&quot;,\&quot;Low\&quot;,etc..).      * **testCategory** _(mandatory)_: The test run category of the test run (\&quot;Functional\&quot; or \&quot;NonFunctional\&quot;).      * **testType** _(mandatory)_: the test type of the test run (Manual, Automated).      * **cycleName** _(optional)_: specify the cycle name which the test runs will be under.      Cycle must be provided here or above testRuns in cycleName.      * **assignee** _(optional)_: the username which the test run will be assigned to.      * **executedBy** _(optional)_: the username which the test run is executed by.      * **automation** _(optional)_: the automation content of the test run.      In case TestType is Manual, Automation will be ignore (Manual test run can&#x27;t contain automation content).          * **name** _(optional)_: the name of automation tool.          * **id** _(optional)_: the id of the test run in the automation tool.          * **content** _(mandatory)_: the test run automation content.      * **plannedStartDate** _(optional)_: the test run planned start date.      * **plannedEndDate** _(optional)_: the test run planned end date.      * **components** _(optional)_: the test runs components.      * **labels** _(optional)_: the test runs labels.      * **steps** _(optional)_: list of steps of the test run.      In case TestType is Automated, and Steps will be provided (Test Run will contain Steps and Automation).          * **status** _(mandatory)_: the status of the test run step.          * **actualResult** _(optional)_: the actual result of the steps.          * **comment** _(optional)_: the test run step&#x27;s comment.          * **data** _(optional)_: the test run step&#x27;s data.          * **description** _(optional)_: the test run step&#x27;s description.          * **expectedResult** _(optional)_: the test run step&#x27;s expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) &#x27;value&#x27; must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectkeyTestrunsBody] :body testRuns.
    # @return [Array<(Array<InlineResponse2009>, Integer, Hash)>] Array<InlineResponse2009> data, response status code and response headers
    def v1_projects_project_key_test_runs_post_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TestRunsApi.v1_projects_project_key_test_runs_post ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling TestRunsApi.v1_projects_project_key_test_runs_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs'.sub('{' + 'project-key' + '}', project_key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'Array<InlineResponse2009>' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestRunsApi#v1_projects_project_key_test_runs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read test run(s).
    # ## Get or retrieve information from test run(s).                #### Body fields:  * **cycles** _(optional)_: Specify the cycles to filter by the result.  * **keys** _(optional)_: Specify the test runs keys to filter by the result.  * **expand** _(optional)_: Specify which fields will return additionaly for each Test Run.                Allowed values: \"Steps\" - The test run steps.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [TestrunsSearchBody] :body Test Runs Search filters.
    # @option opts [Integer] :offset Numeric value that determines that the result list will start from result #N (zero based)
    # @option opts [Integer] :limit Numeric value that determines that maximum N results will be returned
    # @return [InlineResponse2008]
    def v1_projects_project_key_test_runs_search_post(project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_search_post_with_http_info(project_key, opts)
      data
    end

    # Read test run(s).
    # ## Get or retrieve information from test run(s).                #### Body fields:  * **cycles** _(optional)_: Specify the cycles to filter by the result.  * **keys** _(optional)_: Specify the test runs keys to filter by the result.  * **expand** _(optional)_: Specify which fields will return additionaly for each Test Run.                Allowed values: \&quot;Steps\&quot; - The test run steps.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [TestrunsSearchBody] :body Test Runs Search filters.
    # @option opts [Integer] :offset Numeric value that determines that the result list will start from result #N (zero based)
    # @option opts [Integer] :limit Numeric value that determines that maximum N results will be returned
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def v1_projects_project_key_test_runs_search_post_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TestRunsApi.v1_projects_project_key_test_runs_search_post ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling TestRunsApi.v1_projects_project_key_test_runs_search_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/search'.sub('{' + 'project-key' + '}', project_key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'InlineResponse2008' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestRunsApi#v1_projects_project_key_test_runs_search_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete test run(s).
    # ## Delete existing test run(s).
    # @param test_run_key Test Run Key.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_projects_project_key_test_runs_test_run_key_delete(test_run_key, project_key, opts = {})
      v1_projects_project_key_test_runs_test_run_key_delete_with_http_info(test_run_key, project_key, opts)
      nil
    end

    # Delete test run(s).
    # ## Delete existing test run(s).
    # @param test_run_key Test Run Key.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_delete_with_http_info(test_run_key, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TestRunsApi.v1_projects_project_key_test_runs_test_run_key_delete ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling TestRunsApi.v1_projects_project_key_test_runs_test_run_key_delete"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling TestRunsApi.v1_projects_project_key_test_runs_test_run_key_delete"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}'.sub('{' + 'test-run-key' + '}', test_run_key.to_s).sub('{' + 'project-key' + '}', project_key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestRunsApi#v1_projects_project_key_test_runs_test_run_key_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update test run(s).
    # ## Update an existing test run.  ##### Note: Any values you enter will override existing values in the test run.                #### Body fields:  * **testCategory** _(optional)_: The test run category of the test run (\"Functional\" or \"NonFunctional\").  * **executedBy** _(optional)_: the username which the test run is executed by.  * **assignee** _(optional)_: the username which the test run will be assigned to.  * **priority** _(optional)_: priority of the test run (\"Highes\",\"Low\",etc..).  * **status** _(optional)_: the status of the test run. Status of test runs is defined in JIRA under the admin page. Mandatory field.  * **plannedStartDate** _(optional)_: the test run planned start date.  * **plannedEndDate** _(optional)_: the test run planned end date.  * **cycleId** _(optional)_: specify the cycle Id which the test runs will be under.  * **components** _(optional)_: the test runs components.  * **labels** _(optional)_: the test runs labels.  * **steps** _(optional)_: list of steps of the test run.  In case TestType is Automated, Steps will be ignore (Automated test run can't contain steps).      * **status** _(mandatory)_: the status of the test run step.      * **actualResult** _(optional)_: the actual result of the steps.      * **comment** _(optional)_: the test run step's comment.      * **data** _(optional)_: the test run step's data.      * **description** _(optional)_: the test run step's description.      * **expectedResult** _(optional)_: the test run step's expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) 'value' must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).
    # @param test_run_key Test Run Key.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [TestrunsTestrunkeyBody] :body Patch document.
    # @return [nil]
    def v1_projects_project_key_test_runs_test_run_key_put(test_run_key, project_key, opts = {})
      v1_projects_project_key_test_runs_test_run_key_put_with_http_info(test_run_key, project_key, opts)
      nil
    end

    # Update test run(s).
    # ## Update an existing test run.  ##### Note: Any values you enter will override existing values in the test run.                #### Body fields:  * **testCategory** _(optional)_: The test run category of the test run (\&quot;Functional\&quot; or \&quot;NonFunctional\&quot;).  * **executedBy** _(optional)_: the username which the test run is executed by.  * **assignee** _(optional)_: the username which the test run will be assigned to.  * **priority** _(optional)_: priority of the test run (\&quot;Highes\&quot;,\&quot;Low\&quot;,etc..).  * **status** _(optional)_: the status of the test run. Status of test runs is defined in JIRA under the admin page. Mandatory field.  * **plannedStartDate** _(optional)_: the test run planned start date.  * **plannedEndDate** _(optional)_: the test run planned end date.  * **cycleId** _(optional)_: specify the cycle Id which the test runs will be under.  * **components** _(optional)_: the test runs components.  * **labels** _(optional)_: the test runs labels.  * **steps** _(optional)_: list of steps of the test run.  In case TestType is Automated, Steps will be ignore (Automated test run can&#x27;t contain steps).      * **status** _(mandatory)_: the status of the test run step.      * **actualResult** _(optional)_: the actual result of the steps.      * **comment** _(optional)_: the test run step&#x27;s comment.      * **data** _(optional)_: the test run step&#x27;s data.      * **description** _(optional)_: the test run step&#x27;s description.      * **expectedResult** _(optional)_: the test run step&#x27;s expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) &#x27;value&#x27; must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).
    # @param test_run_key Test Run Key.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [TestrunsTestrunkeyBody] :body Patch document.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_put_with_http_info(test_run_key, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TestRunsApi.v1_projects_project_key_test_runs_test_run_key_put ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling TestRunsApi.v1_projects_project_key_test_runs_test_run_key_put"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling TestRunsApi.v1_projects_project_key_test_runs_test_run_key_put"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}'.sub('{' + 'test-run-key' + '}', test_run_key.to_s).sub('{' + 'project-key' + '}', project_key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestRunsApi#v1_projects_project_key_test_runs_test_run_key_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end