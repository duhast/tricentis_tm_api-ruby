# TricentisTmApi::FoldersApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_folders_post**](FoldersApi.md#v1_projects_project_key_folders_post) | **POST** /v1/projects/{project-key}/folders | Create folder(s). |


## v1_projects_project_key_folders_post

> <V1ProjectsProjectKeyFoldersPost200Response> v1_projects_project_key_folders_post(project_key, opts)

Create folder(s).

## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.

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

api_instance = TricentisTmApi::FoldersApi.new
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_folders_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyFoldersPostRequestInner.new({name: 'name_example'})] # Array<V1ProjectsProjectKeyFoldersPostRequestInner> | List of folders to create.
}

begin
  # Create folder(s).
  result = api_instance.v1_projects_project_key_folders_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_post: #{e}"
end
```

#### Using the v1_projects_project_key_folders_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyFoldersPost200Response>, Integer, Hash)> v1_projects_project_key_folders_post_with_http_info(project_key, opts)

```ruby
begin
  # Create folder(s).
  data, status_code, headers = api_instance.v1_projects_project_key_folders_post_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyFoldersPost200Response>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_folders_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyFoldersPostRequestInner&gt;**](V1ProjectsProjectKeyFoldersPostRequestInner.md) | List of folders to create. | [optional] |

### Return type

[**V1ProjectsProjectKeyFoldersPost200Response**](V1ProjectsProjectKeyFoldersPost200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

