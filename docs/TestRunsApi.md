# TricentisTmApi::TestRunsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_test_runs_post**](TestRunsApi.md#v1_projects_project_key_test_runs_post) | **POST** /v1/projects/{project-key}/test-runs | Create test run(s).
[**v1_projects_project_key_test_runs_search_post**](TestRunsApi.md#v1_projects_project_key_test_runs_search_post) | **POST** /v1/projects/{project-key}/test-runs/search | Read test run(s).
[**v1_projects_project_key_test_runs_test_run_key_delete**](TestRunsApi.md#v1_projects_project_key_test_runs_test_run_key_delete) | **DELETE** /v1/projects/{project-key}/test-runs/{test-run-key} | Delete test run(s).
[**v1_projects_project_key_test_runs_test_run_key_put**](TestRunsApi.md#v1_projects_project_key_test_runs_test_run_key_put) | **PUT** /v1/projects/{project-key}/test-runs/{test-run-key} | Update test run(s).

# **v1_projects_project_key_test_runs_post**
> Array&lt;InlineResponse2009&gt; v1_projects_project_key_test_runs_post(project_key, opts)

Create test run(s).

## Create or import test run(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **version** _(optional)_: Specify the version name which the test runs will be under.  If version won't be provided OR version will be equal to unversioned, the test runs will be created under unversioned.  (creating and editing of releases (versions) are managed in Jira).  * **cycleName** _(optional)_: Specify the cycle name which the test runs will be under.  * **includeAttachments** _(optional)_: Specify if to include attachments (default value: false).  Cycle must be provided here or under test runs (for each test runs).  * **testRuns** _(mandatory)_: Provide a list of test runs, with each test having the following fields:      * **testCaseKey** _(mandatory)_: test case key that the test run will be linked to.      * **status** _(mandatory)_: the status of the test run. Status of test runs is defined in JIRA under the admin page.      * **name** _(optional)_: name of the test run.      * **description** _(optional)_: description of the test run.      * **priority** _(mandatory)_: priority of the test run (\"Highes\",\"Low\",etc..).      * **testCategory** _(mandatory)_: The test run category of the test run (\"Functional\" or \"NonFunctional\").      * **testType** _(mandatory)_: the test type of the test run (Manual, Automated).      * **cycleName** _(optional)_: specify the cycle name which the test runs will be under.      Cycle must be provided here or above testRuns in cycleName.      * **assignee** _(optional)_: the username which the test run will be assigned to.      * **executedBy** _(optional)_: the username which the test run is executed by.      * **automation** _(optional)_: the automation content of the test run.      In case TestType is Manual, Automation will be ignore (Manual test run can't contain automation content).          * **name** _(optional)_: the name of automation tool.          * **id** _(optional)_: the id of the test run in the automation tool.          * **content** _(mandatory)_: the test run automation content.      * **plannedStartDate** _(optional)_: the test run planned start date.      * **plannedEndDate** _(optional)_: the test run planned end date.      * **components** _(optional)_: the test runs components.      * **labels** _(optional)_: the test runs labels.      * **steps** _(optional)_: list of steps of the test run.      In case TestType is Automated, and Steps will be provided (Test Run will contain Steps and Automation).          * **status** _(mandatory)_: the status of the test run step.          * **actualResult** _(optional)_: the actual result of the steps.          * **comment** _(optional)_: the test run step's comment.          * **data** _(optional)_: the test run step's data.          * **description** _(optional)_: the test run step's description.          * **expectedResult** _(optional)_: the test run step's expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) 'value' must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).

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

api_instance = TricentisTmApi::TestRunsApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::ProjectkeyTestrunsBody.new # ProjectkeyTestrunsBody | testRuns.
}

begin
  #Create test run(s).
  result = api_instance.v1_projects_project_key_test_runs_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**|  | 
 **body** | [**ProjectkeyTestrunsBody**](ProjectkeyTestrunsBody.md)| testRuns. | [optional] 

### Return type

[**Array&lt;InlineResponse2009&gt;**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_projects_project_key_test_runs_search_post**
> InlineResponse2008 v1_projects_project_key_test_runs_search_post(project_key, opts)

Read test run(s).

## Get or retrieve information from test run(s).                #### Body fields:  * **cycles** _(optional)_: Specify the cycles to filter by the result.  * **keys** _(optional)_: Specify the test runs keys to filter by the result.  * **expand** _(optional)_: Specify which fields will return additionaly for each Test Run.                Allowed values: \"Steps\" - The test run steps.

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

api_instance = TricentisTmApi::TestRunsApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunsSearchBody.new # TestrunsSearchBody | Test Runs Search filters.
  offset: 56 # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Read test run(s).
  result = api_instance.v1_projects_project_key_test_runs_search_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_search_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**|  | 
 **body** | [**TestrunsSearchBody**](TestrunsSearchBody.md)| Test Runs Search filters. | [optional] 
 **offset** | [**Integer**](.md)| Numeric value that determines that the result list will start from result #N (zero based) | [optional] 
 **limit** | [**Integer**](.md)| Numeric value that determines that maximum N results will be returned | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_projects_project_key_test_runs_test_run_key_delete**
> v1_projects_project_key_test_runs_test_run_key_delete(test_run_key, project_key)

Delete test run(s).

## Delete existing test run(s).

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

api_instance = TricentisTmApi::TestRunsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 


begin
  #Delete test run(s).
  api_instance.v1_projects_project_key_test_runs_test_run_key_delete(test_run_key, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_test_run_key_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| Test Run Key. | 
 **project_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_projects_project_key_test_runs_test_run_key_put**
> v1_projects_project_key_test_runs_test_run_key_put(test_run_keyproject_key, opts)

Update test run(s).

## Update an existing test run.  ##### Note: Any values you enter will override existing values in the test run.                #### Body fields:  * **testCategory** _(optional)_: The test run category of the test run (\"Functional\" or \"NonFunctional\").  * **executedBy** _(optional)_: the username which the test run is executed by.  * **assignee** _(optional)_: the username which the test run will be assigned to.  * **priority** _(optional)_: priority of the test run (\"Highes\",\"Low\",etc..).  * **status** _(optional)_: the status of the test run. Status of test runs is defined in JIRA under the admin page. Mandatory field.  * **plannedStartDate** _(optional)_: the test run planned start date.  * **plannedEndDate** _(optional)_: the test run planned end date.  * **cycleId** _(optional)_: specify the cycle Id which the test runs will be under.  * **components** _(optional)_: the test runs components.  * **labels** _(optional)_: the test runs labels.  * **steps** _(optional)_: list of steps of the test run.  In case TestType is Automated, Steps will be ignore (Automated test run can't contain steps).      * **status** _(mandatory)_: the status of the test run step.      * **actualResult** _(optional)_: the actual result of the steps.      * **comment** _(optional)_: the test run step's comment.      * **data** _(optional)_: the test run step's data.      * **description** _(optional)_: the test run step's description.      * **expectedResult** _(optional)_: the test run step's expectedResult.      * **fields** _(optional)_: list of fields of the test run.      In case the field is List type (like Environments) allowedValueName must be provided, otherwise (like execution timer) 'value' must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Execution Timer or Environments).          * **allowedValueName** _(optional)_: the allowed value of the scheme (for example Development).          * **value** _(optional)_: the value of the scheme (for example 130).

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

api_instance = TricentisTmApi::TestRunsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunsTestrunkeyBody.new # TestrunsTestrunkeyBody | Patch document.
}

begin
  #Update test run(s).
  api_instance.v1_projects_project_key_test_runs_test_run_key_put(test_run_keyproject_key, opts)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_test_run_key_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| Test Run Key. | 
 **project_key** | **String**|  | 
 **body** | [**TestrunsTestrunkeyBody**](TestrunsTestrunkeyBody.md)| Patch document. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



