# TricentisTmApi::FoldersApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_project_key_folders_post**](FoldersApi.md#v1_projects_project_key_folders_post) | **POST** /v1/projects/{project-key}/folders | Create folder(s).

# **v1_projects_project_key_folders_post**
> InlineResponse200 v1_projects_project_key_folders_post(project_key, opts)

Create folder(s).

## Create new folders. The body contains a list of folders to create.                #### Body fields:                * **name**: The folder name.  * **parentId** _(optional)_: The ID of the parent folder where the new folder should be located.

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

api_instance = TricentisTmApi::FoldersApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::ProjectkeyFoldersBody.new] # Array<ProjectkeyFoldersBody> | List of folders to create.
}

begin
  #Create folder(s).
  result = api_instance.v1_projects_project_key_folders_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling FoldersApi->v1_projects_project_key_folders_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**|  | 
 **body** | [**Array&lt;ProjectkeyFoldersBody&gt;**](ProjectkeyFoldersBody.md)| List of folders to create. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



