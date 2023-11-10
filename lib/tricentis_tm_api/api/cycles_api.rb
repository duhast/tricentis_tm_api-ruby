=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module TricentisTmApi
  class CyclesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create cycle(s).
    # ## Create cycle(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **cycles** _(mandatory)_: Provide a list of cycles, with each test having the following fields:      * **name** _(mandatory)_: name of the cycle.      * **version** _(optional)_: cycle's version (if not provided the version will be under 'unversioned').      * **assignee** _(optional)_: the username which the cycle will be assigned to.      * **plannedStartDate** _(optional)_: the cycle planned start date.      * **plannedEndDate** _(optional)_: the cycle planned end date.      * **fields** _(optional)_: list of fields of the cycle.      Only Environments and Builds are allowed. AllowedValueName must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Environments).          * **allowedValueName** _(mandatory)_: the allowed value of the scheme (for example Development).
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<V1ProjectsProjectKeyCyclesPostRequestInner>] :v1_projects_project_key_cycles_post_request_inner cyclesApiData.
    # @return [Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>]
    def v1_projects_project_key_cycles_post(project_key, opts = {})
      data, _status_code, _headers = v1_projects_project_key_cycles_post_with_http_info(project_key, opts)
      data
    end

    # Create cycle(s).
    # ## Create cycle(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **cycles** _(mandatory)_: Provide a list of cycles, with each test having the following fields:      * **name** _(mandatory)_: name of the cycle.      * **version** _(optional)_: cycle&#39;s version (if not provided the version will be under &#39;unversioned&#39;).      * **assignee** _(optional)_: the username which the cycle will be assigned to.      * **plannedStartDate** _(optional)_: the cycle planned start date.      * **plannedEndDate** _(optional)_: the cycle planned end date.      * **fields** _(optional)_: list of fields of the cycle.      Only Environments and Builds are allowed. AllowedValueName must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Environments).          * **allowedValueName** _(mandatory)_: the allowed value of the scheme (for example Development).
    # @param project_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<V1ProjectsProjectKeyCyclesPostRequestInner>] :v1_projects_project_key_cycles_post_request_inner cyclesApiData.
    # @return [Array<(Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>, Integer, Hash)>] Array<V1ProjectsProjectKeyCyclesPost200ResponseInner> data, response status code and response headers
    def v1_projects_project_key_cycles_post_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CyclesApi.v1_projects_project_key_cycles_post ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling CyclesApi.v1_projects_project_key_cycles_post"
      end
      # resource path
      local_var_path = '/v1/projects/{project-key}/cycles'.sub('{' + 'project-key' + '}', CGI.escape(project_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'v1_projects_project_key_cycles_post_request_inner'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CyclesApi.v1_projects_project_key_cycles_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CyclesApi#v1_projects_project_key_cycles_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end