# TricentisTmApi::V1ProjectsProjectKeyTestRunsPost200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_case_key** | **String** |  |  |
| **precondition** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **priority** | **String** |  | [optional] |
| **test_category** | **String** |  | [optional] |
| **test_type** | **String** |  |  |
| **assignee** | **String** |  | [optional] |
| **executed_by** | **String** |  | [optional] |
| **planned_start_date** | **Time** |  | [optional] |
| **planned_end_date** | **Time** |  | [optional] |
| **automation** | [**V1ProjectsProjectKeyTestRunsPostRequestTestRunsInnerAutomation**](V1ProjectsProjectKeyTestRunsPostRequestTestRunsInnerAutomation.md) |  | [optional] |
| **components** | **Array&lt;String&gt;** |  | [optional] |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **cycle_name** | **String** |  | [optional] |
| **folder_path** | **String** |  | [optional] |
| **steps** | [**Array&lt;V1ProjectsProjectKeyTestRunsPost200ResponseInnerStepsInner&gt;**](V1ProjectsProjectKeyTestRunsPost200ResponseInnerStepsInner.md) |  | [optional] |
| **fields** | [**Array&lt;V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner&gt;**](V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **updated_by** | **String** |  | [optional] |
| **cycle** | [**V1ProjectsProjectKeyCyclesPost200ResponseInner**](V1ProjectsProjectKeyCyclesPost200ResponseInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyTestRunsPost200ResponseInner.new(
  test_case_key: null,
  precondition: null,
  status: null,
  name: null,
  description: null,
  priority: null,
  test_category: null,
  test_type: null,
  assignee: null,
  executed_by: null,
  planned_start_date: null,
  planned_end_date: null,
  automation: null,
  components: null,
  labels: null,
  cycle_name: null,
  folder_path: null,
  steps: null,
  fields: null,
  id: null,
  key: null,
  created: null,
  updated: null,
  created_by: null,
  updated_by: null,
  cycle: null
)
```

