# TricentisTmApi::TestRunsFieldsApi

All URIs are relative to *https://api.ttm4j.tricentis.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete**](TestRunsFieldsApi.md#v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete) | **DELETE** /v1/test-runs/scheme/{schemeName}/allowed-values/{allowedValueName} | Delete allowed value from scheme. |
| [**v1_test_runs_scheme_scheme_name_allowed_values_post**](TestRunsFieldsApi.md#v1_test_runs_scheme_scheme_name_allowed_values_post) | **POST** /v1/test-runs/scheme/{schemeName}/allowed-values | Add allowed value to scheme. |


## v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete

> v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete(scheme_name, allowed_value_name)

Delete allowed value from scheme.

## Delete allowed value from scheme.  ##### Note: Allowed Scheme names: Environments, Builds.

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

api_instance = TricentisTmApi::TestRunsFieldsApi.new
scheme_name = 'scheme_name_example' # String | The scheme name (Environments, Builds).
allowed_value_name = 'allowed_value_name_example' # String | allowedValueName.

begin
  # Delete allowed value from scheme.
  api_instance.v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete(scheme_name, allowed_value_name)
rescue TricentisTmApi::ApiError => e
  puts "Error when calling TestRunsFieldsApi->v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete: #{e}"
end
```

#### Using the v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete_with_http_info(scheme_name, allowed_value_name)

```ruby
begin
  # Delete allowed value from scheme.
  data, status_code, headers = api_instance.v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete_with_http_info(scheme_name, allowed_value_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling TestRunsFieldsApi->v1_test_runs_scheme_scheme_name_allowed_values_allowed_value_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheme_name** | **String** | The scheme name (Environments, Builds). |  |
| **allowed_value_name** | **String** | allowedValueName. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_test_runs_scheme_scheme_name_allowed_values_post

> v1_test_runs_scheme_scheme_name_allowed_values_post(scheme_name, opts)

Add allowed value to scheme.

## Add allowed value to scheme.  ##### Note: Allowed Scheme names: Environments, Builds.  ##### In case of trying to add existing allowed value, it will be ignored (duplicates are not allowed) and the response will be 200.                #### Body fields:  * **allowedValues** _(mandatory)_: Provide a list of allowed values, with each value having the following fields:      * **name** _(mandatory)_: name of the allowed value.      * **description** _(optional)_: allowed value description.

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

api_instance = TricentisTmApi::TestRunsFieldsApi.new
scheme_name = 'scheme_name_example' # String | The scheme name (Environments, Builds).
opts = {
  v1_test_runs_scheme_scheme_name_allowed_values_post_request_inner: [TricentisTmApi::V1TestRunsSchemeSchemeNameAllowedValuesPostRequestInner.new] # Array<V1TestRunsSchemeSchemeNameAllowedValuesPostRequestInner> | allowedValueApiData.
}

begin
  # Add allowed value to scheme.
  api_instance.v1_test_runs_scheme_scheme_name_allowed_values_post(scheme_name, opts)
rescue TricentisTmApi::ApiError => e
  puts "Error when calling TestRunsFieldsApi->v1_test_runs_scheme_scheme_name_allowed_values_post: #{e}"
end
```

#### Using the v1_test_runs_scheme_scheme_name_allowed_values_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_test_runs_scheme_scheme_name_allowed_values_post_with_http_info(scheme_name, opts)

```ruby
begin
  # Add allowed value to scheme.
  data, status_code, headers = api_instance.v1_test_runs_scheme_scheme_name_allowed_values_post_with_http_info(scheme_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TricentisTmApi::ApiError => e
  puts "Error when calling TestRunsFieldsApi->v1_test_runs_scheme_scheme_name_allowed_values_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheme_name** | **String** | The scheme name (Environments, Builds). |  |
| **v1_test_runs_scheme_scheme_name_allowed_values_post_request_inner** | [**Array&lt;V1TestRunsSchemeSchemeNameAllowedValuesPostRequestInner&gt;**](V1TestRunsSchemeSchemeNameAllowedValuesPostRequestInner.md) | allowedValueApiData. | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

