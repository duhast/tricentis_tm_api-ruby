# TricentisTmApi::DefectsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_test_runs_test_run_key_defects_link_post**](DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_link_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects/link | Link Defects to test run. |
| [**v1_projects_project_key_test_runs_test_run_key_defects_post**](DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects | Create defects and link to test run. |


## v1_projects_project_key_test_runs_test_run_key_defects_link_post

> <Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>> v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_key, project_key, opts)

Link Defects to test run.

## Link defects test run.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.

### Examples

```ruby
require 'time'
require 'tricentis_tm_api'
# setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | testRunKey.
project_key = 'project_key_example' # String | 
opts = {
  step_index: 56, # Integer | stepIndex.
  v1_projects_project_key_test_cases_key_requirement_link_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner.new] # Array<V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner> | defects.
}

begin
  # Link Defects to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_link_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info(test_run_key, project_key, opts)

```ruby
begin
  # Link Defects to test run.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info(test_run_key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_link_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_run_key** | **String** | testRunKey. |  |
| **project_key** | **String** |  |  |
| **step_index** | **Integer** | stepIndex. | [optional] |
| **v1_projects_project_key_test_cases_key_requirement_link_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner&gt;**](V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner.md) | defects. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner&gt;**](V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_projects_project_key_test_runs_test_run_key_defects_post

> <Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>> v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_key, project_key, opts)

Create defects and link to test run.

## Create defects and link to test run.  ##### Note: In case issue type won't be provided, default value will be \"Bug\" issue type.                #### Query parameters:  * **stepIndex** _(optional)_: if step index will be provided, the defect will be linked to the step.                #### Body fields:  * **summary** _(mandatory)_: the defect summary.  * **description** _(optional)_: the defect description.  * **issueType** _(optional)_: the defect issue type (for example: Task, Bug, etc..).

### Examples

```ruby
require 'time'
require 'tricentis_tm_api'
# setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = {
  step_index: 56, # Integer | stepIndex .
  v1_projects_project_key_test_cases_key_requirements_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyTestCasesKeyRequirementsPostRequestInner.new] # Array<V1ProjectsProjectKeyTestCasesKeyRequirementsPostRequestInner> | defects to create.
}

begin
  # Create defects and link to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info(test_run_key, project_key, opts)

```ruby
begin
  # Create defects and link to test run.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info(test_run_key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_run_key** | **String** | Test Run Key. |  |
| **project_key** | **String** |  |  |
| **step_index** | **Integer** | stepIndex . | [optional] |
| **v1_projects_project_key_test_cases_key_requirements_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyTestCasesKeyRequirementsPostRequestInner&gt;**](V1ProjectsProjectKeyTestCasesKeyRequirementsPostRequestInner.md) | defects to create. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner&gt;**](V1ProjectsProjectKeyTestRunsTestRunKeyDefectsPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

