# TricentisTmApi::FoldersApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_folders_folder_id_put**](FoldersApi.md#v1_projects_project_key_folders_folder_id_put) | **PUT** /v1/projects/{project-key}/folders/{folderId} | Update folder. |
| [**v1_projects_project_key_folders_get**](FoldersApi.md#v1_projects_project_key_folders_get) | **GET** /v1/projects/{project-key}/folders | Get folder(s). |
| [**v1_projects_project_key_folders_post**](FoldersApi.md#v1_projects_project_key_folders_post) | **POST** /v1/projects/{project-key}/folders | Create folder(s). |


## v1_projects_project_key_folders_folder_id_put

> <V1ProjectsProjectKeyFoldersGet200ResponseItemsInner> v1_projects_project_key_folders_folder_id_put(folder_id, project_key, opts)

Update folder.

## Update folder.                #### Body fields:  * **name** _(optional)_: The folder name.  * **parentId** _(optional)_: In case parentId equal to 00000000-0000-0000-0000-000000000000, the folder will be moved to root.

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
folder_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Folder's Id to update.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_folders_folder_id_put_request: TricentisTmApi::V1ProjectsProjectKeyFoldersFolderIdPutRequest.new # V1ProjectsProjectKeyFoldersFolderIdPutRequest | Folder's detail to update.
}

begin
  # Update folder.
  result = api_instance.v1_projects_project_key_folders_folder_id_put(folder_id, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_folder_id_put: #{e}"
end
```

#### Using the v1_projects_project_key_folders_folder_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyFoldersGet200ResponseItemsInner>, Integer, Hash)> v1_projects_project_key_folders_folder_id_put_with_http_info(folder_id, project_key, opts)

```ruby
begin
  # Update folder.
  data, status_code, headers = api_instance.v1_projects_project_key_folders_folder_id_put_with_http_info(folder_id, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyFoldersGet200ResponseItemsInner>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_folder_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | Folder&#39;s Id to update. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_folders_folder_id_put_request** | [**V1ProjectsProjectKeyFoldersFolderIdPutRequest**](V1ProjectsProjectKeyFoldersFolderIdPutRequest.md) | Folder&#39;s detail to update. | [optional] |

### Return type

[**V1ProjectsProjectKeyFoldersGet200ResponseItemsInner**](V1ProjectsProjectKeyFoldersGet200ResponseItemsInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_projects_project_key_folders_get

> <V1ProjectsProjectKeyFoldersGet200Response> v1_projects_project_key_folders_get(project_key, opts)

Get folder(s).

## Get folders.                #### Query parameters to filter by:                * **name** : _(optional)_: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located. (If not provided, only root folders will return).

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
  name: 'name_example', # String | name.
  parent_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | parentId.
  offset: TODO, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: TODO # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  # Get folder(s).
  result = api_instance.v1_projects_project_key_folders_get(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_get: #{e}"
end
```

#### Using the v1_projects_project_key_folders_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyFoldersGet200Response>, Integer, Hash)> v1_projects_project_key_folders_get_with_http_info(project_key, opts)

```ruby
begin
  # Get folder(s).
  data, status_code, headers = api_instance.v1_projects_project_key_folders_get_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyFoldersGet200Response>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling FoldersApi->v1_projects_project_key_folders_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **name** | **String** | name. | [optional] |
| **parent_id** | **String** | parentId. | [optional] |
| **offset** | [**Integer**](.md) | Numeric value that determines that the result list will start from result #N (zero based) | [optional] |
| **limit** | [**Integer**](.md) | Numeric value that determines that maximum N results will be returned | [optional] |

### Return type

[**V1ProjectsProjectKeyFoldersGet200Response**](V1ProjectsProjectKeyFoldersGet200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_projects_project_key_folders_post

> <V1ProjectsProjectKeyFoldersGet200Response> v1_projects_project_key_folders_post(project_key, opts)

Create folder(s).

## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name** : The folder name.  * **parentId** _(optional)_ : The ID of the parent folder where the new folder should be located.

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

> <Array(<V1ProjectsProjectKeyFoldersGet200Response>, Integer, Hash)> v1_projects_project_key_folders_post_with_http_info(project_key, opts)

```ruby
begin
  # Create folder(s).
  data, status_code, headers = api_instance.v1_projects_project_key_folders_post_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyFoldersGet200Response>
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

[**V1ProjectsProjectKeyFoldersGet200Response**](V1ProjectsProjectKeyFoldersGet200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

