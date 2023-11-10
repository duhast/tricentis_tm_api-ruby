# TricentisTmApi::V1ProjectsProjectKeyCyclesPostRequestInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **assignee** | **String** |  | [optional] |
| **planned_start_date** | **Time** |  | [optional] |
| **planned_end_date** | **Time** |  | [optional] |
| **fields** | [**Array&lt;V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner&gt;**](V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyCyclesPostRequestInner.new(
  name: null,
  version: null,
  assignee: null,
  planned_start_date: null,
  planned_end_date: null,
  fields: null
)
```

