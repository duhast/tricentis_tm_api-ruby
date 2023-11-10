# TricentisTmApi::ProjectsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_projects_get**](ProjectsApi.md#v1_projects_get) | **GET** /v1/projects | Get Jira project(s). |


## v1_projects_get

> <Array<V1ProjectsGet200ResponseInner>> v1_projects_get(opts)

Get Jira project(s).

## Get or retrieve Jira project(s).

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

api_instance = TricentisTmApi::ProjectsApi.new
opts = {
  keys: 'keys_example', # String | keys.
  offset: TODO, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: TODO # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  # Get Jira project(s).
  result = api_instance.v1_projects_get(opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Error when calling ProjectsApi->v1_projects_get: #{e}"
end
```

#### Using the v1_projects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ProjectsGet200ResponseInner>>, Integer, Hash)> v1_projects_get_with_http_info(opts)

```ruby
begin
  # Get Jira project(s).
  data, status_code, headers = api_instance.v1_projects_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ProjectsGet200ResponseInner>>
rescue TricentisTmApi::ApiError => e
  puts "Error when calling ProjectsApi->v1_projects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | **String** | keys. | [optional] |
| **offset** | [**Integer**](.md) | Numeric value that determines that the result list will start from result #N (zero based) | [optional] |
| **limit** | [**Integer**](.md) | Numeric value that determines that maximum N results will be returned | [optional] |

### Return type

[**Array&lt;V1ProjectsGet200ResponseInner&gt;**](V1ProjectsGet200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

