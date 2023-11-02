# TricentisTmApi::AttachmentsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_test_runs_attachments_id_put**](AttachmentsApi.md#v1_projects_project_key_test_runs_attachments_id_put) | **PUT** /v1/projects/{project-key}/test-runs/attachments/{id} | Query if attachment is uploaded to storage.
[**v1_projects_project_key_test_runs_test_run_key_attachments_post**](AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/attachments | Upload attachment to a test run.
[**v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post**](AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/steps/{step-number}/attachments | Upload attachment to a test run step.

# **v1_projects_project_key_test_runs_attachments_id_put**
> v1_projects_project_key_test_runs_attachments_id_put(id, project_key)

Query if attachment is uploaded to storage.

## Query if the attachment file was successfully uploaded to storage.                Use this to confirm the following:  * Upload information was received from **POST** v1/projects/{project-key}/test-runs/{test-run-key}/attachments  * The file successfully uploaded to storage as binary data.

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

api_instance = TricentisTmApi::AttachmentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Attachment Id.
project_key = 'project_key_example' # String | 


begin
  #Query if attachment is uploaded to storage.
  api_instance.v1_projects_project_key_test_runs_attachments_id_put(id, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| Attachment Id. | 
 **project_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_projects_project_key_test_runs_test_run_key_attachments_post**
> InlineResponse2005 v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_keyproject_key, opts)

Upload attachment to a test run.

## Initiate the attachment upload process for a test run.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.

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

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunkeyAttachmentsBody.new # TestrunkeyAttachmentsBody | attachmentRequestApiData.
}

begin
  #Upload attachment to a test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_keyproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| Test Run Key. | 
 **project_key** | **String**|  | 
 **body** | [**TestrunkeyAttachmentsBody**](TestrunkeyAttachmentsBody.md)| attachmentRequestApiData. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post**
> InlineResponse2005 v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_keystep_numberproject_key, opts)

Upload attachment to a test run step.

## Initiate the attachment upload process for a test run step.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.

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

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
step_number = 56 # Integer | Step index.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::StepnumberAttachmentsBody.new # StepnumberAttachmentsBody | attachmentRequestApiData.
}

begin
  #Upload attachment to a test run step.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_keystep_numberproject_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_run_key** | **String**| Test Run Key. | 
 **step_number** | **Integer**| Step index. | 
 **project_key** | **String**|  | 
 **body** | [**StepnumberAttachmentsBody**](StepnumberAttachmentsBody.md)| attachmentRequestApiData. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



