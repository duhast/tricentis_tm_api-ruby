# TricentisTmApi::TestCasesApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_jobs_job_id_get**](TestCasesApi.md#v1_projects_project_key_jobs_job_id_get) | **GET** /v1/projects/{project-key}/jobs/{job-id} | Query job status.
[**v1_projects_project_key_test_cases_get**](TestCasesApi.md#v1_projects_project_key_test_cases_get) | **GET** /v1/projects/{project-key}/test-cases | Read test case(s).
[**v1_projects_project_key_test_cases_key_automation_put**](TestCasesApi.md#v1_projects_project_key_test_cases_key_automation_put) | **PUT** /v1/projects/{project-key}/test-cases/{key}/automation | Add or update automation content for a test case.
[**v1_projects_project_key_test_cases_key_delete**](TestCasesApi.md#v1_projects_project_key_test_cases_key_delete) | **DELETE** /v1/projects/{project-key}/test-cases/{key} | Delete test case(s).
[**v1_projects_project_key_test_cases_key_put**](TestCasesApi.md#v1_projects_project_key_test_cases_key_put) | **PUT** /v1/projects/{project-key}/test-cases/{key} | Update test case(s).
[**v1_projects_project_key_test_cases_post**](TestCasesApi.md#v1_projects_project_key_test_cases_post) | **POST** /v1/projects/{project-key}/test-cases | Create test case(s).
[**v1_test_cases_search_post**](TestCasesApi.md#v1_test_cases_search_post) | **POST** /v1/test-cases/search | Search test case(s).

# **v1_projects_project_key_jobs_job_id_get**
> InlineResponse2003 v1_projects_project_key_jobs_job_id_get(job_id, project_key)

Query job status.

## Query the status of an asynchronous job to create or import test case(s).

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

api_instance = TricentisTmApi::TestCasesApi.new
job_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The job ID returned from the import request endpoint.
project_key = 'project_key_example' # String | 


begin
  #Query job status.
  result = api_instance.v1_projects_project_key_jobs_job_id_get(job_id, project_key)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_jobs_job_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**String**](.md)| The job ID returned from the import request endpoint. | 
 **project_key** | **String**|  | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_projects_project_key_test_cases_get**
> InlineResponse2002 v1_projects_project_key_test_cases_get(project_key, opts)

Read test case(s).

## Get or retrieve information from test case(s).                #### Body fields:  * **jiraFields**: a comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.  * **ttmFields**: a comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.

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

api_instance = TricentisTmApi::TestCasesApi.new
project_key = 'project_key_example' # String | 
opts = { 
  jira_fields: 'jira_fields_example', # String | A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  ttm_fields: 'ttm_fields_example', # String | A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Read test case(s).
  result = api_instance.v1_projects_project_key_test_cases_get(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**|  | 
 **jira_fields** | **String**| A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list. | [optional] 
 **ttm_fields** | **String**| A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list. | [optional] 
 **offset** | [**Integer**](.md)| Numeric value that determines that the result list will start from result #N (zero based) | [optional] 
 **limit** | [**Integer**](.md)| Numeric value that determines that maximum N results will be returned | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_projects_project_key_test_cases_key_automation_put**
> v1_projects_project_key_test_cases_key_automation_put(keyproject_key, opts)

Add or update automation content for a test case.

## Add or update automation content and details for a test case.                #### Body fields:                * **name**: The name of the automation for the test case.  * **externalId** _(optional)_: The external Id of the automated test from the external automation system.  * **key**: The Jira key of the test case .

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

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The Jira issue key for the Test Case.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::KeyAutomationBody.new # KeyAutomationBody | API body payload to update a test case and add automation.
  confirmation: false # BOOLEAN | <br>Changing a test case from Manual to Automated overwrites your precondition and test steps.  <br> Select True to confirm that you want to delete the precondition and test steps from the test case.
}

begin
  #Add or update automation content for a test case.
  api_instance.v1_projects_project_key_test_cases_key_automation_put(keyproject_key, opts)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_automation_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The Jira issue key for the Test Case. | 
 **project_key** | **String**|  | 
 **body** | [**KeyAutomationBody**](KeyAutomationBody.md)| API body payload to update a test case and add automation. | [optional] 
 **confirmation** | **BOOLEAN**| &lt;br&gt;Changing a test case from Manual to Automated overwrites your precondition and test steps.  &lt;br&gt; Select True to confirm that you want to delete the precondition and test steps from the test case. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_projects_project_key_test_cases_key_delete**
> v1_projects_project_key_test_cases_key_delete(key, project_key)

Delete test case(s).

## Delete test case(s).

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

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The Jira id or key of the test.
project_key = 'project_key_example' # String | 


begin
  #Delete test case(s).
  api_instance.v1_projects_project_key_test_cases_key_delete(key, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The Jira id or key of the test. | 
 **project_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_projects_project_key_test_cases_key_put**
> InlineResponse2004 v1_projects_project_key_test_cases_key_put(keyproject_key, opts)

Update test case(s).

## Update existing test case(s).

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

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The jira key of the test.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestcasesKeyBody.new # TestcasesKeyBody | The data to update in the test.
}

begin
  #Update test case(s).
  result = api_instance.v1_projects_project_key_test_cases_key_put(keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The jira key of the test. | 
 **project_key** | **String**|  | 
 **body** | [**TestcasesKeyBody**](TestcasesKeyBody.md)| The data to update in the test. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_projects_project_key_test_cases_post**
> InlineResponse202 v1_projects_project_key_test_cases_post(project_key, opts)

Create test case(s).

## Create test case(s).                #### Body fields:                * **folder** _(optional)_: Specify the folder path where you want to save the test case. A path is a string of concatenated parts separated by a slash \"/\".  If you don't specify a folder path, the test case saves in the \"All tests\" folder. Do not specify both the folder and the folderID, or the request will fail.  * **folderId** _(optional)_: Specify a unique ID associated with the folder in the TTM database, which specifies where the test case should be saved. Do not specify both the folder and the folderID, or the request will fail.  * **callbackUrl** _(optional)_: Specify a URL that will recevie status of the request (The URL will serve as POST endpoint in the user side).  * **tests**: Provide a list of tests with the following values:      * **fields**: The native Jira fields in a test case. The following fields are available:          * **summary**: The Summary of the test case in Jira.          * **description** _(optional)_: The Description of the test case in Jira.          * **status** _(optional)_: The Status of the test case in Jira.          * **priority** _(optional)_: The Priority of the test case in Jira.          * **labels** _(optional)_: The Labels of the test case in Jira.      * **ttmFields**: These are the Jira fields provided by the Tricentis Test Management for Jira plugin. The following fields are available:          * **precondition** _(optional)_: The precondition for a test case.          * **steps** _(optional)_: The list of steps for the test case.              * **description** _(optional)_: Step description.              * **expectedResult** _(optional)_: Step expected result.              * **data** _(optional)_: Step data.              * **testCaseKey** _(optional)_: test case key, when set the step will call the test case and other step fields will be ignored.      * **testType**: Can be one of the following: \"Manual\", \"Automated\"      * **requirements** _(optional)_: List of issues keys (from Jira) that should be linked as requirements.      * **customFields** _(optional)_: The custom Jira fields in a test case.      * **folder** _(optional)_: Specify the folder path where you want to save the test case. A path is a string of concatenated parts separated by a slash \"/\".  If you don't specify a folder path, the test case saves in the \"All tests\" folder. Do not specify both the folder and the folderID, or the request will fail. If you do not specify the folder in this field, the request uses the folder specified at the root level.      * **folderId** _(optional)_: Specify a unique ID associated with the folder in the TTM database, which specifies where the test case should be saved. Do not specify both the folder and the folderID, or the request will fail. If you do not specify the folderId in this field, the request uses the folderId specified at the root level.      * **automation** _(optional)_: Automation data. Provide the following values for your test case:          * **name**: The name of your external automation system. For example, Testim.          * **externalId** _(optional)_: The ID of the test in your external automation platform.          * **content** _(optional)_: The content your automation system supplies to represent the test.

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

api_instance = TricentisTmApi::TestCasesApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::ProjectkeyTestcasesBody.new # ProjectkeyTestcasesBody | External API body payload that describes the tests to create.
}

begin
  #Create test case(s).
  result = api_instance.v1_projects_project_key_test_cases_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**|  | 
 **body** | [**ProjectkeyTestcasesBody**](ProjectkeyTestcasesBody.md)| External API body payload that describes the tests to create. | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_test_cases_search_post**
> InlineResponse2002 v1_test_cases_search_post(opts)

Search test case(s).

## Search for test case(s) using JQL.                #### Body fields:                * **jql** _(optional)_: The Jira Query Language (JQL) query to search.  * **jiraFields**: A comma-separated list of Jira fields to return for each issue. Use this to retrieve a subset of fields.  * **ttmFields**: A comma-separated list of TTM fields to return for each issue. Use this to retrieve a subset of fields.

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

api_instance = TricentisTmApi::TestCasesApi.new
opts = { 
  body: TricentisTmApi::TestcasesSearchBody.new # TestcasesSearchBody | The request body.
  jira_fields: 'jira_fields_example' # String | A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  ttm_fields: 'ttm_fields_example' # String | A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  offset: 56 # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Search test case(s).
  result = api_instance.v1_test_cases_search_post(opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_test_cases_search_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TestcasesSearchBody**](TestcasesSearchBody.md)| The request body. | [optional] 
 **jira_fields** | **String**| A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list. | [optional] 
 **ttm_fields** | **String**| A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list. | [optional] 
 **offset** | [**Integer**](.md)| Numeric value that determines that the result list will start from result #N (zero based) | [optional] 
 **limit** | [**Integer**](.md)| Numeric value that determines that maximum N results will be returned | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



