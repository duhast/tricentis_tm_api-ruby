# TricentisTmApi::V1ProjectsProjectKeyTestRunsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** |  | [optional] |
| **cycle_name** | **String** |  | [optional] |
| **folder_path** | **String** |  | [optional] |
| **include_attachments** | **Boolean** |  | [optional] |
| **test_runs** | [**Array&lt;V1ProjectsProjectKeyTestRunsPostRequestTestRunsInner&gt;**](V1ProjectsProjectKeyTestRunsPostRequestTestRunsInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyTestRunsPostRequest.new(
  version: null,
  cycle_name: null,
  folder_path: null,
  include_attachments: null,
  test_runs: null
)
```

