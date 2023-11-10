# TricentisTmApi::StatusApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_api_key_is_alive_head**](StatusApi.md#v1_api_key_is_alive_head) | **HEAD** /v1/api-key/is-alive | Validate if api key is still valid. |


## v1_api_key_is_alive_head

> v1_api_key_is_alive_head

Validate if api key is still valid.

## Validate if api key is still valid.

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

api_instance = TricentisTmApi::StatusApi.new

begin
  # Validate if api key is still valid.
  api_instance.v1_api_key_is_alive_head
rescue TricentisTmApi::ApiError => e
  puts "Error when calling StatusApi->v1_api_key_is_alive_head: #{e}"
end
```

#### Using the v1_api_key_is_alive_head_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_api_key_is_alive_head_with_http_info

```ruby
begin
  # Validate if api key is still valid.
  data, status_code, headers = api_instance.v1_api_key_is_alive_head_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling StatusApi->v1_api_key_is_alive_head_with_http_info: #{e}"
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

