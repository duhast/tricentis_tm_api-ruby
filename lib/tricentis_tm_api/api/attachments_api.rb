=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module TricentisTmApi
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Query if attachment is uploaded to storage.
    # ## Query if the attachment file was successfully uploaded to storage.                Use this to confirm the following:  * Upload information was received from **POST** v1/projects/{project-key}/test-runs/{test-run-key}/attachments  * The file successfully uploaded to storage as binary data.
    # @param id [String] Attachment Id.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_projects_project_key_test_runs_attachments_id_put(id, project_key, opts = {})
      v1_projects_project_key_test_runs_attachments_id_put_with_http_info(id, project_key, opts)
      nil
    end

    # Query if attachment is uploaded to storage.
    # ## Query if the attachment file was successfully uploaded to storage.                Use this to confirm the following:  * Upload information was received from **POST** v1/projects/{project-key}/test-runs/{test-run-key}/attachments  * The file successfully uploaded to storage as binary data.
    # @param id [String] Attachment Id.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_projects_project_key_test_runs_attachments_id_put_with_http_info(id, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.v1_projects_project_key_test_runs_attachments_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.v1_projects_project_key_test_runs_attachments_id_put"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling AttachmentsApi.v1_projects_project_key_test_runs_attachments_id_put"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/attachments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.v1_projects_project_key_test_runs_attachments_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#v1_projects_project_key_test_runs_attachments_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload attachment to a test run.
    # ## Initiate the attachment upload process for a test run.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
    # @param test_run_key [String] Test Run Key.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
    # @return [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response]
    def v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_key, project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info(test_run_key, project_key, opts)
      data
    end

    # Upload attachment to a test run.
    # ## Initiate the attachment upload process for a test run.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
    # @param test_run_key [String] Test Run Key.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
    # @return [Array<(V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response, Integer, Hash)>] V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response data, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info(test_run_key, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_attachments_post ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_attachments_post"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_attachments_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}/attachments'.sub('{' + 'test-run-key' + '}', CGI.escape(test_run_key.to_s)).sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_test_runs_test_run_key_attachments_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_attachments_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#v1_projects_project_key_test_runs_test_run_key_attachments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload attachment to a test run step.
    # ## Initiate the attachment upload process for a test run step.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
    # @param test_run_key [String] Test Run Key.
    # @param step_number [Integer] Step index.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
    # @return [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response]
    def v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_key, step_number, project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info(test_run_key, step_number, project_key, opts)
      data
    end

    # Upload attachment to a test run step.
    # ## Initiate the attachment upload process for a test run step.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.
    # @param test_run_key [String] Test Run Key.
    # @param step_number [Integer] Step index.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest] :v1_projects_project_key_test_runs_test_run_key_attachments_post_request attachmentRequestApiData.
    # @return [Array<(V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response, Integer, Hash)>] V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response data, response status code and response headers
    def v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info(test_run_key, step_number, project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post ...'
      end
      # verify the required parameter 'test_run_key' is set
      if @api_client.config.client_side_validation && test_run_key.nil?
        fail ArgumentError, "Missing the required parameter 'test_run_key' when calling AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post"
      end
      # verify the required parameter 'step_number' is set
      if @api_client.config.client_side_validation && step_number.nil?
        fail ArgumentError, "Missing the required parameter 'step_number' when calling AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post"
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/test-runs/{test-run-key}/steps/{step-number}/attachments'.sub('{' + 'test-run-key' + '}', CGI.escape(test_run_key.to_s)).sub('{' + 'step-number' + '}', CGI.escape(step_number.to_s)).sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_test_runs_test_run_key_attachments_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
