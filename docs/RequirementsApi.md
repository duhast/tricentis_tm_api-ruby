# TricentisTmApi::RequirementsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_test_cases_key_requirement_link_post**](RequirementsApi.md#v1_projects_project_key_test_cases_key_requirement_link_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirement/link | Link Requirements to test case.
[**v1_projects_project_key_test_cases_key_requirements_post**](RequirementsApi.md#v1_projects_project_key_test_cases_key_requirements_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirements | Create Requirements and link to test case.

# **v1_projects_project_key_test_cases_key_requirement_link_post**
> Array&lt;InlineResponse2001&gt; v1_projects_project_key_test_cases_key_requirement_link_post(keyproject_key, opts)

Link Requirements to test case.

## LLink Requirements to test case.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.

### Example
```ruby
# load the gem
require 'tricentis_tm_api'
# setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::RequirementLinkBody.new] # Array<RequirementLinkBody> | requirements to link.
}

begin
  #Link Requirements to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirement_link_post(keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirement_link_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| jiraTestKey. | 
 **project_key** | **String**|  | 
 **body** | [**Array&lt;RequirementLinkBody&gt;**](RequirementLinkBody.md)| requirements to link. | [optional] 

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **v1_projects_project_key_test_cases_key_requirements_post**
> Array&lt;InlineResponse2001&gt; v1_projects_project_key_test_cases_key_requirements_post(keyproject_key, opts)

Create Requirements and link to test case.

## Create Requirements and link to test case.  ##### Note: In case issue type won't be provided, default value will be \"Bug\" issue type.                #### Body fields:  * **summary** _(mandatory)_: the requirement summary.  * **description** _(optional)_: the requirement description.  * **issueType** _(optional)_: the requirement issue type (for example: Task, Bug, etc..).

### Example
```ruby
# load the gem
require 'tricentis_tm_api'
# setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::KeyRequirementsBody.new] # Array<KeyRequirementsBody> | requirements to create.
}

begin
  #Create Requirements and link to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirements_post(keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirements_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| jiraTestKey. | 
 **project_key** | **String**|  | 
 **body** | [**Array&lt;KeyRequirementsBody&gt;**](KeyRequirementsBody.md)| requirements to create. | [optional] 

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



