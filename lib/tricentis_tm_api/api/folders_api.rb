=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

module TricentisTmApi
  class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create folder(s).
    # ## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectkeyFoldersBody>] :body List of folders to create.
    # @return [InlineResponse200]
    def v1_projects_project_key_folders_post(project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_folders_post_with_http_info(project_key, opts)
      data
    end

    # Create folder(s).
    # ## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.
    # @param project_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectkeyFoldersBody>] :body List of folders to create.
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def v1_projects_project_key_folders_post_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.v1_projects_project_key_folders_post ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FoldersApi.v1_projects_project_key_folders_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/folders'.sub('{' + 'project-key' + '}', project_key.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse200' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#v1_projects_project_key_folders_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
