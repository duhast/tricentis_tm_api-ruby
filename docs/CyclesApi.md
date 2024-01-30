# TricentisTmApi::CyclesApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_project_key_cycles_cycle_id_put**](CyclesApi.md#v1_projects_project_key_cycles_cycle_id_put) | **PUT** /v1/projects/{project-key}/cycles/{cycleId} | Update cycle. |
| [**v1_projects_project_key_cycles_post**](CyclesApi.md#v1_projects_project_key_cycles_post) | **POST** /v1/projects/{project-key}/cycles | Create cycle(s). |
| [**v1_projects_project_key_cycles_search_get**](CyclesApi.md#v1_projects_project_key_cycles_search_get) | **GET** /v1/projects/{project-key}/cycles/search | Get cycles. |


## v1_projects_project_key_cycles_cycle_id_put

> <V1ProjectsProjectKeyCyclesPost200ResponseInner> v1_projects_project_key_cycles_cycle_id_put(cycle_id, project_key, opts)

Update cycle.

## Update cycle.  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **cycle** : Provide the cycle details to update:      * **name** _(optional)_: name of the cycle.      * **assignee** _(optional)_: the username or email which the cycle will be assigned to.      * **plannedStartDate** _(optional)_: the cycle planned start date.      * **plannedEndDate** _(optional)_: the cycle planned end date.      * **fields** _(optional)_: list of fields of the cycle.      Only Environments and Builds are allowed. AllowedValueName must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Environments).          * **allowedValueName** _(mandatory)_: the allowed value of the scheme (for example Development).

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
cycle_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | cycleId.
project_key = 'project_key_example' # String | 
opts = {
  v1_projects_project_key_cycles_cycle_id_put_request: TricentisTmApi::V1ProjectsProjectKeyCyclesCycleIdPutRequest.new # V1ProjectsProjectKeyCyclesCycleIdPutRequest | cyclesApiData.
}

begin
  # Update cycle.
  result = api_instance.v1_projects_project_key_cycles_cycle_id_put(cycle_id, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_cycle_id_put: #{e}"
end
```

#### Using the v1_projects_project_key_cycles_cycle_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ProjectsProjectKeyCyclesPost200ResponseInner>, Integer, Hash)> v1_projects_project_key_cycles_cycle_id_put_with_http_info(cycle_id, project_key, opts)

```ruby
begin
  # Update cycle.
  data, status_code, headers = api_instance.v1_projects_project_key_cycles_cycle_id_put_with_http_info(cycle_id, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ProjectsProjectKeyCyclesPost200ResponseInner>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_cycle_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cycle_id** | **String** | cycleId. |  |
| **project_key** | **String** |  |  |
| **v1_projects_project_key_cycles_cycle_id_put_request** | [**V1ProjectsProjectKeyCyclesCycleIdPutRequest**](V1ProjectsProjectKeyCyclesCycleIdPutRequest.md) | cyclesApiData. | [optional] |

### Return type

[**V1ProjectsProjectKeyCyclesPost200ResponseInner**](V1ProjectsProjectKeyCyclesPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_projects_project_key_cycles_post

> <Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>> v1_projects_project_key_cycles_post(project_key, opts)

Create cycle(s).

## Create cycle(s).  ##### Note: Release versions are managed in Jira.                #### Body fields:  * **cycles** _(mandatory)_: Provide a list of cycles, with each test having the following fields:      * **name** _(mandatory)_: name of the cycle.      * **version** _(optional)_: cycle's version (if not provided the version will be under 'unversioned').      * **assignee** _(optional)_: the username or email which the cycle will be assigned to.      * **plannedStartDate** _(optional)_: the cycle planned start date.      * **plannedEndDate** _(optional)_: the cycle planned end date.      * **fields** _(optional)_: list of fields of the cycle.      Only Environments and Builds are allowed. AllowedValueName must be provided.          * **schemeName** _(mandatory)_: the scheme name of the field (for example Environments).          * **allowedValueName** _(mandatory)_: the allowed value of the scheme (for example Development).

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


## v1_projects_project_key_cycles_search_get

> <Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>> v1_projects_project_key_cycles_search_get(project_key, opts)

Get cycles.

## Get cycle(s).  ##### Note: Release versions are managed in Jira.                #### Query parameter fields:  * **cycle** : Provide the cycle details to filter by:      * **name** _(optional)_: filter cycles that contains name.      * **version** _(optional)_: cycle's version (if not provided the default value is 'unversioned').      * **assignee** _(optional)_: the username or email which the cycle is assigned to.

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
  name: 'name_example', # String | name.
  version: 'version_example', # String | version.
  assignee: 'assignee_example', # String | assignee.
  offset: TODO, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: TODO # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  # Get cycles.
  result = api_instance.v1_projects_project_key_cycles_search_get(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_search_get: #{e}"
end
```

#### Using the v1_projects_project_key_cycles_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>>, Integer, Hash)> v1_projects_project_key_cycles_search_get_with_http_info(project_key, opts)

```ruby
begin
  # Get cycles.
  data, status_code, headers = api_instance.v1_projects_project_key_cycles_search_get_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsProjectKeyCyclesPost200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling CyclesApi->v1_projects_project_key_cycles_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **name** | **String** | name. | [optional] |
| **version** | **String** | version. | [optional] |
| **assignee** | **String** | assignee. | [optional] |
| **offset** | [**Integer**](.md) | Numeric value that determines that the result list will start from result #N (zero based) | [optional] |
| **limit** | [**Integer**](.md) | Numeric value that determines that maximum N results will be returned | [optional] |

### Return type

[**Array&lt;V1ProjectsProjectKeyCyclesPost200ResponseInner&gt;**](V1ProjectsProjectKeyCyclesPost200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

