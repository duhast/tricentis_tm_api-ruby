# TricentisTmApi::RequirementsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_test_cases_key_requirement_link_post**](RequirementsApi.md#v1_projects_project_key_test_cases_key_requirement_link_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirement/link | Link Requirements to test case. |
| [**v1_projects_project_key_test_cases_key_requirements_post**](RequirementsApi.md#v1_projects_project_key_test_cases_key_requirements_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirements | Create Requirements and link to test case. |
| [**v1_projects_project_key_test_cases_requirements_post**](RequirementsApi.md#v1_projects_project_key_test_cases_requirements_post) | **POST** /v1/projects/{project-key}/test-cases/requirements | Create Requirements. |


## v1_projects_project_key_test_cases_key_requirement_link_post

> <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>> v1_projects_project_key_test_cases_key_requirement_link_post(key, project_key, opts)

Link Requirements to test case.

## Link Requirements to test case.                #### Body fields:  * **issueKey** _(mandatory)_: the issue key.

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

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_test_cases_key_requirement_link_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner.new] # Array<V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner> | requirements to link.
}

begin
  # Link Requirements to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirement_link_post(key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirement_link_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_cases_key_requirement_link_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_test_cases_key_requirement_link_post_with_http_info(key, project_key, opts)

```ruby
begin
  # Link Requirements to test case.
  data, status_code, headers = api_instance.v1_projects_project_key_test_cases_key_requirement_link_post_with_http_info(key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirement_link_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | jiraTestKey. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_test_cases_key_requirement_link_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner&gt;**](V1ProjectsProjectKeyTestCasesKeyRequirementLinkPostRequestInner.md) | requirements to link. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner&gt;**](V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## v1_projects_project_key_test_cases_key_requirements_post

> <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>> v1_projects_project_key_test_cases_key_requirements_post(key, project_key, opts)

Create Requirements and link to test case.

## Create Requirements and link to test case.  ##### Note: In case issue type won't be provided, default value will be \"Requirement\" issue type.                #### Body fields:  * **summary** _(mandatory)_: the requirement summary.  * **description** _(optional)_: the requirement description.  * **issueType** _(optional)_: the requirement issue type (for example: Task, Requirement, Bug, etc..).

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

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_test_cases_requirements_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner.new] # Array<V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner> | requirements to create.
}

begin
  # Create Requirements and link to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirements_post(key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirements_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_cases_key_requirements_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_test_cases_key_requirements_post_with_http_info(key, project_key, opts)

```ruby
begin
  # Create Requirements and link to test case.
  data, status_code, headers = api_instance.v1_projects_project_key_test_cases_key_requirements_post_with_http_info(key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirements_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | jiraTestKey. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_test_cases_requirements_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner&gt;**](V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner.md) | requirements to create. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner&gt;**](V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## v1_projects_project_key_test_cases_requirements_post

> <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>> v1_projects_project_key_test_cases_requirements_post(project_key, opts)

Create Requirements.

## Create Requirements and link to test case.  ##### Note: In case issue type won't be provided, default value will be \"Requirement\" issue type.                #### Body fields:  * **summary** _(mandatory)_: the requirement summary.  * **description** _(optional)_: the requirement description.  * **issueType** _(optional)_: the requirement issue type (for example: Task, Requirement, Bug, etc..).

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

api_instance = TricentisTmApi::RequirementsApi.new
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_test_cases_requirements_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner.new] # Array<V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner> | requirements to create.
}

begin
  # Create Requirements.
  result = api_instance.v1_projects_project_key_test_cases_requirements_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_requirements_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_cases_requirements_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_test_cases_requirements_post_with_http_info(project_key, opts)

```ruby
begin
  # Create Requirements.
  data, status_code, headers = api_instance.v1_projects_project_key_test_cases_requirements_post_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling RequirementsApi->v1_projects_project_key_test_cases_requirements_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_test_cases_requirements_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner&gt;**](V1ProjectsProjectKeyTestCasesRequirementsPostRequestInner.md) | requirements to create. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner&gt;**](V1ProjectsProjectKeyTestCasesRequirementsPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

