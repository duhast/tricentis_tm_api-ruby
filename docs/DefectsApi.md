# TricentisTmApi::DefectsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_test_runs_test_run_key_defects_link_post**](DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_link_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects/link | Link Defects to test run.
[**v1_projects_project_key_test_runs_test_run_key_defects_post**](DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects | Create defects and link to test run.

# **v1_projects_project_key_test_runs_test_run_key_defects_link_post**
> Array&lt;InlineResponse2006&gt; v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_keyproject_key, opts)

Link Defects to test run.

## Link defects test run.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.

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

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | testRunKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::RequirementLinkBody.new] # Array<RequirementLinkBody> | defects.
  step_index: 56 # Integer | stepIndex.
}

begin
  #Link Defects to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_link_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| testRunKey. | 
 **project_key** | **String**|  | 
 **body** | [**Array&lt;RequirementLinkBody&gt;**](RequirementLinkBody.md)| defects. | [optional] 
 **step_index** | **Integer**| stepIndex. | [optional] 

### Return type

[**Array&lt;InlineResponse2006&gt;**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **v1_projects_project_key_test_runs_test_run_key_defects_post**
> Array&lt;InlineResponse2006&gt; v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_keyproject_key, opts)

Create defects and link to test run.

## Create defects and link to test run.  ##### Note: In case issue type won't be provided, default value will be \"Bug\" issue type.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **summary** _(mandatory)_: the defect summary.  * **description** _(optional)_: the defect description.  * **issueType** _(optional)_: the defect issue type (for example: Task, Bug, etc..).

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

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::KeyRequirementsBody.new] # Array<KeyRequirementsBody> | defects to create.
  step_index: 56 # Integer | stepIndex .
}

begin
  #Create defects and link to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| Test Run Key. | 
 **project_key** | **String**|  | 
 **body** | [**Array&lt;KeyRequirementsBody&gt;**](KeyRequirementsBody.md)| defects to create. | [optional] 
 **step_index** | **Integer**| stepIndex . | [optional] 

### Return type

[**Array&lt;InlineResponse2006&gt;**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



