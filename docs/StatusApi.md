# TricentisTmApi::StatusApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_api_key_is_alive_head**](StatusApi.md#v1_api_key_is_alive_head) | **HEAD** /v1/api-key/is-alive | Validate if api key is still valid.

# **v1_api_key_is_alive_head**
> v1_api_key_is_alive_head

Validate if api key is still valid.

## Validate if api key is still valid.

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

api_instance = TricentisTmApi::StatusApi.new

begin
  #Validate if api key is still valid.
  api_instance.v1_api_key_is_alive_head
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling StatusApi->v1_api_key_is_alive_head: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



