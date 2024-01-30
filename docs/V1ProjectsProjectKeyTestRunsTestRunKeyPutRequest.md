# TricentisTmApi::V1ProjectsProjectKeyTestRunsTestRunKeyPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_category** | **String** |  | [optional] |
| **assignee** | **String** |  | [optional] |
| **executed_by** | **String** |  | [optional] |
| **planned_start_date** | **Time** |  | [optional] |
| **planned_end_date** | **Time** |  | [optional] |
| **priority** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **cycle_id** | **String** |  | [optional] |
| **folder_path** | **String** |  | [optional] |
| **components** | **Array&lt;String&gt;** |  | [optional] |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **fields** | [**Array&lt;V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner&gt;**](V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner.md) |  | [optional] |
| **steps** | [**Array&lt;V1ProjectsProjectKeyTestRunsPostRequestTestRunsInnerStepsInner&gt;**](V1ProjectsProjectKeyTestRunsPostRequestTestRunsInnerStepsInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyTestRunsTestRunKeyPutRequest.new(
  test_category: null,
  assignee: null,
  executed_by: null,
  planned_start_date: null,
  planned_end_date: null,
  priority: null,
  status: null,
  cycle_id: null,
  folder_path: null,
  components: null,
  labels: null,
  fields: null,
  steps: null
)
```

