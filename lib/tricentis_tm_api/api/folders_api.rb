=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module TricentisTmApi
  class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create folder(s).
    # ## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<V1ProjectsProjectKeyFoldersPostRequestInner>] :v1_projects_project_key_folders_post_request_inner List of folders to create.
    # @return [V1ProjectsProjectKeyFoldersPost200Response]
    def v1_projects_project_key_folders_post(project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_folders_post_with_http_info(project_key, opts)
      data
    end

    # Create folder(s).
    # ## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<V1ProjectsProjectKeyFoldersPostRequestInner>] :v1_projects_project_key_folders_post_request_inner List of folders to create.
    # @return [Array<(V1ProjectsProjectKeyFoldersPost200Response, Integer, Hash)>] V1ProjectsProjectKeyFoldersPost200Response data, response status code and response headers
    def v1_projects_project_key_folders_post_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.v1_projects_project_key_folders_post ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FoldersApi.v1_projects_project_key_folders_post"
      end
      if @api_client.config.client_side_validation && !opts[:'v1_projects_project_key_folders_post_request_inner'].nil? && opts[:'v1_projects_project_key_folders_post_request_inner'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"v1_projects_project_key_folders_post_request_inner"]" when calling FoldersApi.v1_projects_project_key_folders_post, number of items must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/projects/{project-key}/folders'.sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_folders_post_request_inner'])

      # return_type
      return_type = opts[:debug_return_type] || 'V1ProjectsProjectKeyFoldersPost200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"FoldersApi.v1_projects_project_key_folders_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#v1_projects_project_key_folders_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
