# TricentisTmApi::V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **testcase** | [**Array&lt;V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInnerTestcaseInner&gt;**](V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInnerTestcaseInner.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **tests** | **Integer** |  | [optional] |
| **failure** | **Integer** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **skipped** | **Integer** |  | [optional] |
| **failureevaluating** | **Integer** |  | [optional] |
| **testsuites** | [**Array&lt;V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInnerTestsuitesInner&gt;**](V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInnerTestsuitesInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyImportExecutionJunitPostRequestTestsuiteInner.new(
  testcase: null,
  name: null,
  tests: null,
  failure: null,
  timestamp: null,
  skipped: null,
  failureevaluating: null,
  testsuites: null
)
```

