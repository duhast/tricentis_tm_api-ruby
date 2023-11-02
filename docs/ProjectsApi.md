# TricentisTmApi::ProjectsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_projects_get**](ProjectsApi.md#v1_projects_get) | **GET** /v1/projects | Get Jira project(s).

# **v1_projects_get**
> Array&lt;InlineResponse2007&gt; v1_projects_get(opts)

Get Jira project(s).

## Get or retrieve Jira project(s).

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

api_instance = TricentisTmApi::ProjectsApi.new
opts = { 
  keys: 'keys_example', # String | keys.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Get Jira project(s).
  result = api_instance.v1_projects_get(opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling ProjectsApi->v1_projects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keys** | **String**| keys. | [optional] 
 **offset** | [**Integer**](.md)| Numeric value that determines that the result list will start from result #N (zero based) | [optional] 
 **limit** | [**Integer**](.md)| Numeric value that determines that maximum N results will be returned | [optional] 

### Return type

[**Array&lt;InlineResponse2007&gt;**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



