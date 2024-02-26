# TricentisTmApi::AttachmentsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_test_runs_attachments_attachment_id_get**](AttachmentsApi.md#v1_projects_project_key_test_runs_attachments_attachment_id_get) | **GET** /v1/projects/{project-key}/test-runs/attachments/{attachmentId} | Get attachment link. |
| [**v1_projects_project_key_test_runs_attachments_id_put**](AttachmentsApi.md#v1_projects_project_key_test_runs_attachments_id_put) | **PUT** /v1/projects/{project-key}/test-runs/attachments/{id} | Query if attachment is uploaded to storage. |
| [**v1_projects_project_key_test_runs_test_run_key_attachments_get**](AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_attachments_get) | **GET** /v1/projects/{project-key}/test-runs/{test-run-key}/attachments | Get attachment of a test run. |
| [**v1_projects_project_key_test_runs_test_run_key_attachments_post**](AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/attachments | Upload attachment to a test run. |
| [**v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post**](AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/steps/{step-number}/attachments | Upload attachment to a test run step. |


## v1_projects_project_key_test_runs_attachments_attachment_id_get

> v1_projects_project_key_test_runs_attachments_attachment_id_get(attachment_id, project_key)

Get attachment link.

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

api_instance = TricentisTmApi::AttachmentsApi.new
attachment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The attachment Id.
project_key = 'project_key_example' # String | 

begin
  # Get attachment link.
  api_instance.v1_projects_project_key_test_runs_attachments_attachment_id_get(attachment_id, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_attachment_id_get: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_attachments_attachment_id_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_projects_project_key_test_runs_attachments_attachment_id_get_with_http_info(attachment_id, project_key)

```ruby
begin
  # Get attachment link.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_attachments_attachment_id_get_with_http_info(attachment_id, project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_attachment_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment_id** | **String** | The attachment Id. |  |
| **project_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_projects_project_key_test_runs_attachments_id_put

> v1_projects_project_key_test_runs_attachments_id_put(id, project_key)

Query if attachment is uploaded to storage.

## Query if the attachment file was successfully uploaded to storage.                Use this to confirm the following:  * Upload information was received from **POST** v1/projects/{project-key}/test-runs/{test-run-key}/attachments  * The file successfully uploaded to storage as binary data.

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

api_instance = TricentisTmApi::AttachmentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Attachment Id.
project_key = 'project_key_example' # String | 

begin
  # Query if attachment is uploaded to storage.
  api_instance.v1_projects_project_key_test_runs_attachments_id_put(id, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_id_put: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_attachments_id_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_projects_project_key_test_runs_attachments_id_put_with_http_info(id, project_key)

```ruby
begin
  # Query if attachment is uploaded to storage.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_attachments_id_put_with_http_info(id, project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Attachment Id. |  |
| **project_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_projects_project_key_test_runs_test_run_key_attachments_get

> v1_projects_project_key_test_runs_test_run_key_attachments_get(test_run_key, project_key, opts)

Get attachment of a test run.

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

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = {
  offset: TODO, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: TODO # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  # Get attachment of a test run.
  api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_get(test_run_key, project_key, opts)
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_get: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_test_run_key_attachments_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_projects_project_key_test_runs_test_run_key_attachments_get_with_http_info(test_run_key, project_key, opts)

```ruby
begin
  # Get attachment of a test run.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_get_with_http_info(test_run_key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_run_key** | **String** | Test Run Key. |  |
| **project_key** | **String** |  |  |
| **offset** | [**Integer**](.md) | Numeric value that determines that the result list will start from result #N (zero based) | [optional] |
| **limit** | [**Integer**](.md) | Numeric value that determines that maximum N results will be returned | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_projects_project_key_test_runs_test_run_key_attachments_post

> <V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response> v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_key, project_key, opts)

Upload attachment to a test run.

## Initiate the attachment upload process for a test run.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.

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

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_test_runs_test_run_key_attachments_post_request: TricentisTmApi::V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest.new # V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest | attachmentRequestApiData.
}

begin
  # Upload attachment to a test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response>, Integer, Hash)> v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info(test_run_key, project_key, opts)

```ruby
begin
  # Upload attachment to a test run.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info(test_run_key, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_run_key** | **String** | Test Run Key. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_test_runs_test_run_key_attachments_post_request** | [**V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest**](V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest.md) | attachmentRequestApiData. | [optional] |

### Return type

[**V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response**](V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post

> <V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response> v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_key, step_number, project_key, opts)

Upload attachment to a test run step.

## Initiate the attachment upload process for a test run step.     Max Attachments Size allowed is 50MB (Per attachment).  ### After you use this endpoint, you need to do the following:  * Send a PUT request to the S3 link with the attachment as binary data to upload the attachment file with the information received.  * Confirm the upload is finished with the PUT request v1/projects/{project-key}test-runs/attachments/{id}.

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

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
step_number = 56 # Integer | Step index.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_test_runs_test_run_key_attachments_post_request: TricentisTmApi::V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest.new # V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest | attachmentRequestApiData.
}

begin
  # Upload attachment to a test run step.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_key, step_number, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post: #{e}"
end
```

#### Using the v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response>, Integer, Hash)> v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info(test_run_key, step_number, project_key, opts)

```ruby
begin
  # Upload attachment to a test run step.
  data, status_code, headers = api_instance.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info(test_run_key, step_number, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_run_key** | **String** | Test Run Key. |  |
| **step_number** | **Integer** | Step index. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_test_runs_test_run_key_attachments_post_request** | [**V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest**](V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPostRequest.md) | attachmentRequestApiData. | [optional] |

### Return type

[**V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response**](V1ProjectsProjectKeyTestRunsTestRunKeyAttachmentsPost200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

