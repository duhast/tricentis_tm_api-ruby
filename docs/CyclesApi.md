# TricentisTmApi::CyclesApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_cycles_post**](CyclesApi.md#v1_projects_project_key_cycles_post) | **POST** /v1/projects/{project-key}/cycles | Create cycle(s). |


## v1_projects_project_key_cycles_post

> <Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>> v1_projects_project_key_cycles_post(project_key, opts)

Create cycle(s).

## Create cycle(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **cycles** _(mandatory)_: Provide a list of cycles, with each test having the following fields:      * **name** _(mandatory)_: name of the cycle.      * **version** _(optional)_: cycle's version (if not provided the version will be under 'unversioned').      * **assignee** _(optional)_: the username which the cycle will be assigned to.      * **plannedStartDate** _(optional)_: the cycle planned start date.      * **plannedEndDate** _(optional)_: the cycle planned end date.      * **fields** _(optional)_: list of fields of the cycle.      Only Environments and Builds are allowed. AllowedValueName must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Environments).          * **allowedValueName** _(mandatory)_: the allowed value of the scheme (for example Development).

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

api_instance = TricentisTmApi::CyclesApi.new
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_cycles_post_request_inner: [TricentisTmApi::V1ProjectsProjectKeyCyclesPostRequestInner.new] # Array<V1ProjectsProjectKeyCyclesPostRequestInner> | cyclesApiData.
}

begin
  # Create cycle(s).
  result = api_instance.v1_projects_project_key_cycles_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_post: #{e}"
end
```

#### Using the v1_projects_project_key_cycles_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_cycles_post_with_http_info(project_key, opts)

```ruby
begin
  # Create cycle(s).
  data, status_code, headers = api_instance.v1_projects_project_key_cycles_post_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_cycles_post_request_inner** | [**Array&lt;V1ProjectsProjectKeyCyclesPostRequestInner&gt;**](V1ProjectsProjectKeyCyclesPostRequestInner.md) | cyclesApiData. | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyCyclesPost200ResponseInner&gt;**](V1ProjectsProjectKeyCyclesPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

